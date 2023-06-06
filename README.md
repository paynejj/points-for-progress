This [RAPID](https://rapid.cincinnati.ventures/) Remix project was scaffolded with the `rapid cli`

</br>

![web-banner](https://user-images.githubusercontent.com/68653294/218370294-a4bcaef6-087c-489e-8748-0b2eea0fcb90.jpg)
<h1 align='center'>Rapid</h1>
<h4 align='center'>The intersection between developer experience and scalability</h4>
<div align='center'>
    <a href='https://rapid.cincinnati.ventures/' target='_blank'>rapid.cincinnati.ventures</a>
</div>

# Getting started

1. Enter the app directory

    ```bash
    cd pfp
    ```

2. Download the project dependencies using your favorite package manager:

    ```bash
    pnpm install
    ```

3. Run the frontend servers:
    - **Automatically** (with tmux)

        ```bash
        bash run.sh
        ```

    - Manually

        First:

        ```bash
        pnpm run dev
        ```

        Then, in a separate terminal

        ```bash
        rapid run
        ```

4. Compilation issues? You may need to manually install rapid_web,
just clone the [rapid-web crate](https://github.com/Cincinnati-Ventures/rapid) into the path specified in **Cargo.toml**

</br>

> Refer to our docs for any assistance: <https://rapid.cincinnati.ventures>
