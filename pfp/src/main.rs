use clap::Parser;
use pfp::cli::*;

fn main() {
    let cli = Cli::parse();

    match &cli.command {
        Some(Commands::Add { description }) => {
            println!("{description}");
        }
        Some(Commands::List) => {}
        Some(Commands::Remove) => {}
        None => {}
    }
}
