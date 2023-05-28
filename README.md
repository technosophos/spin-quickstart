# Matt's Quickstart Codespace for Spin

This is a simple template for getting started with GitHub Codespaces and [Spin](https://developer.fermyon.com/spin). It's designed for JavaScript or TypeScript Spin apps.

This repo follows the same path as the [Spin Quickstart](https://developer.fermyon.com/spin/quickstart), but I automated the installation steps.

## Getting Started: Use This Template

To start a Codespace, click the green `Use this template` button and choose `Open in a codespace`. This will open an in-browser version of VS Code running in a Linux host.

From this point, we'll configure Spin and then create a simple app.

## Inside the Codespace

Once you have started a Codespace, you will be running in a Linux environment. The idea is to make this Codespace the easiest starting point for trying out the [Spin Quickstart](https://developer.fermyon.com/spin/quickstart).

> This part is optional. If you would prefer, you can simply follow the QuickStart guide step by step.

I automated the process of installing Spin and initializing it. Just run this command in your terminal:

```bash
./install-spin.sh
```

The above will do the following:
* It will create a `bin` directory
* `spin` will be installed into `bin`, so it will be available at `/workspaces/$CODESPACE_NAME/bin`
* Spin JS/TS templates and plugins are installed

When the script is done, `which spin` should show you the location in which Spin was installed.

## Time to Code!

Once you have Spin installed, you can skip straight to creating a new Spin project. We'll scaffold a new JS project:

```bash
spin new http-js hello-js
```

It is safe to accept all of the defaults presented by `spin new`.

Then `cd` into the directory we just created:

```bash
cd hello-js
```

In this directory, you should see a standard JS app. Note that this is _not_ a NodeJS app. It is a serverless function that will run inside of Spin.

The `src/index.js` file is the one we will work with. You can open the code and edit away. One easy change you can do is change the `body` to say something different.

The `spin.toml` is the Spin configuration file. No need to do anything with that right now. But it is the one and only special Spin file. The rest is all run-of-the-mill.

Once you're done editing the `index.js` file, run `spin build` to fetch dependencies from NPM and then build the WebAssembly package from your app:

```bash
spin build
```

> For some reason, webpack-cli is not working the first time it is run. So the first `spin build` may fail. Subsequent builds work fine, though.

And from there, we can deploy to Fermyon Cloud.

```bash
spin deploy
```

The first time we do this, it'll walk us through the process of initializing Fermyon Cloud. Once it's done, we'll have a publicly available URL to try.

> On most platforms, you can also use `spin up` or `spin build --up` in Codespaces to start an instance on the Codespaces server. I have not been able to get this working on my iPad though. Something seems to be amiss with Safari.

## Rinse and Repeat

At this point you should have a running app and a configured development environment. Have fun trying out the many things you can do with spin.

- Need inspiration? [Check out Spin examples](https://developer.fermyon.com/spin/see-what-people-have-built-with-spin)
- Ready for more info? [Writing Spin Applications](https://developer.fermyon.com/spin/writing-apps) gets you up to speed.
- Want a different language? [Language Support](https://developer.fermyon.com/spin/language-support-overview) covers all the SDKs
- And there's plenty more at [Developer.Fermyon.Com](https://developer.fermyon.com)

If you'd like to chat with us, [join our Discord server](https://discord.gg/AAFNfS7NGf). We love to talk Spin, WebAssembly, and serverless.

## Beyond JavaScript

This repo is intended for JS/TS. You can use other languages like Rust or Go, but you will need to use the terminal to install your desired toolchain.

The base image is Ubuntu Linux, so you can use `apt-get` or any of the normal UNIX tools to configure.
