extern crate rust_project;

use rust_project::project::{string_to_integer};

#[test]
fn public_test_to_int() {
    assert_eq!(132, string_to_integer("one three two"));
    assert_eq!(62, string_to_integer("six two"));
}
