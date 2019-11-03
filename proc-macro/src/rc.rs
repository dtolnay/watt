use std::mem::ManuallyDrop;
use std::ops::Deref;
use std::rc::Rc as ActualRc;

// Equivalent to std::rc::Rc<T> but with a defined repr.
#[repr(transparent)]
pub struct Rc<T> {
    ptr: *const T,
}

impl<T> Rc<T> {
    pub fn new(value: T) -> Self {
        Rc {
            ptr: ActualRc::into_raw(ActualRc::new(value)),
        }
    }
}

impl<T: Clone> Rc<T> {
    pub fn make_mut(this: &mut Rc<T>) -> &mut T {
        let mut rc = ManuallyDrop::new(unsafe { ActualRc::from_raw(this.ptr) });
        let ptr = ActualRc::make_mut(&mut rc) as *mut T;
        this.ptr = ptr;
        unsafe { &mut *ptr }
    }
}

impl<T> Deref for Rc<T> {
    type Target = T;
    fn deref(&self) -> &Self::Target {
        unsafe { &*self.ptr }
    }
}

impl<T> Clone for Rc<T> {
    fn clone(&self) -> Self {
        let existing_rc = ManuallyDrop::new(unsafe { ActualRc::from_raw(self.ptr) });
        let new_rc = ActualRc::clone(&existing_rc);
        Rc {
            ptr: ActualRc::into_raw(new_rc),
        }
    }
}

impl<T> Drop for Rc<T> {
    fn drop(&mut self) {
        let _ = unsafe { ActualRc::from_raw(self.ptr) };
    }
}
