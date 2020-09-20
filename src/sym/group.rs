use crate::data::{Data, Handle};
use proc_macro::{Delimiter, Group, TokenStream};

pub fn clone_group_handle(handle: Handle<Group>) -> Handle<Group> {
    Data::with(|d| {
        let group = d.group[handle].clone();
        d.group.push(group)
    })
}

pub fn drop_group_handle(handle: Handle<Group>) {
    Data::with(|d| {
        d.group.take(handle);
    })
}

pub fn group_new(delimiter: Delimiter, tts: Handle<TokenStream>) -> Handle<Group> {
    Data::with(|d| {
        let tts = d.tokenstream.take(tts).unwrap();
        d.group.push(Group::new(delimiter, tts))
    })
}
