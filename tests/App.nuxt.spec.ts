// @vitest-environment nuxt

import { expect, it, test } from "vitest";
import { mountSuspended } from "@nuxt/test-utils/runtime";
import App from "~/app.vue";

it("can mount the App", async () => {
    const component = await mountSuspended(App);
    expect(component.html()).toContain("<h1>Risto Viitanen</h1>");
});
