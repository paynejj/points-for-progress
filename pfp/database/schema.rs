// @generated automatically by Diesel CLI.

diesel::table! {
    goals (id) {
        id -> Int4,
        #[max_length = 255]
        name -> Varchar,
        description -> Text,
        completed -> Bool,
    }
}
