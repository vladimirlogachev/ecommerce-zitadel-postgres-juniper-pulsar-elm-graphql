import { defineConfig } from "vite";
import { resolve } from "path";
import elmPlugin from "vite-plugin-elm";

// --------- User-adjustable

const host = "0.0.0.0"; // "0.0.0.0" = Allow clients from local network

const elmDevSettings = {
  debug: false, // true = enable Elm debugger and show debugger UI
  optimize: false,
  nodeElmCompilerOptions: {},
};

// --------- App-specific

const port = 8081;

// --------- Common

export default defineConfig(({ command }) => {
  const elmProdSettings = {
    debug: false,
    optimize: true,
    nodeElmCompilerOptions: {},
  };
  const elmSettings = command === "build" ? elmProdSettings : elmDevSettings;

  return {
    plugins: [elmPlugin(elmSettings)],
    server: { host, port, strictPort: true },
    build: {
      rollupOptions: {
        input: {
          main: resolve(__dirname, "index.html"),
          error: resolve(__dirname, "error.html"),
        },
      },
    },
    preview: { host, port, strictPort: true },
  };
});
