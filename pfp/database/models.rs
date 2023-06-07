use diesel::prelude::*;

#[derive(Queryable, Selectable)]
#[diesel(table_name = crate::schema::goals)]
#[diesel(check_for_backend(diesel::pg::Pg))]
#[derive(Debug)]
pub struct Goals {
    pub id: i32,
    pub name: String,
    pub description: String,
    pub completed: bool,
}
