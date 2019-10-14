use wa_demo::Demo;

#[derive(Demo)]
pub struct S;

fn main() {
    println!("message={}", S::MESSAGE);
}
