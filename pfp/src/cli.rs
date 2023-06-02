use clap::{Parser, Subcommand};

// Must know the user before doing anything
#[derive(Parser)]
#[command(author, version, about, long_about=None)]
pub struct Cli {
    /// The user to track
    user: String,

    #[command(subcommand)]
    pub command: Option<Commands>,
}

// Ensure all relevant database fields are collected by these commands
#[derive(Subcommand)]
pub enum Commands {
    /// Add goal to database
    Add { description: String },
    /// Remove goal from databexit
    ///
    /// a
    Remove,
    /// List goals currently in database
    List,
}
