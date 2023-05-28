# Matt's Quickstart Codespace for Spin

This is a simple template for getting started with GitHub Codespaces and [Spin](https://developer.fermyon.com/spin).

To get started, just clone this template and then open the cloned repo in a code space. From there, you can begin the [Spin Quickstart](https://developer.fermyon.com/spin/quickstart).

I automated the process of installing Spin and initializing it. Just run this command in your terminal:

```bash
./install-spin.sh
```

Once you are done with this, you can skip straight to creating a new Spin project. We'll do a JS one:

```bash
spin new http-js hello-js
```

Then `cd` into the directory we just created:

```bash
cd hello-js
```

The `src/index.js` file is the one we will work with.

And `spin.toml` is the Spin configuration file. No need to do anything with that right now.

Once you're done editing the `index.js` file, run:

```bash
spin build
```

And from there, we can deploy to Fermyon Cloud.

```bash
spin deploy
```

The first time we do this, it'll walk us through the process of initializing Fermyon Cloud. Once it's done, we'll have a publicly available URL to try.

## For JavaScript and TypeScript

This repo is intended for JS/TS. You can use other languages like Rust or Go, but you will need to use the terminal to install your desired toolchain.
