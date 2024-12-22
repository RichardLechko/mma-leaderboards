// @ts-check
import { defineConfig } from "astro/config";

// https://astro.build/config
export default defineConfig({
  output: "static",
  devToolbar: {
    enabled: false,
  },
  // Enable if you're using SSR
  // output: 'server',
  // adapter: node({
  //   mode: 'standalone'
  // }),
});
