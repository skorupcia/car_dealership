const fs = require("fs");
const path = require("path");
const { JSDOM } = require("jsdom");

describe("Testy strony głównej", () => {
  let document, window;

  beforeEach(() => {
    // Local file attach
    const html = fs.readFileSync(path.resolve(__dirname, "../main.html"), "utf8");
    const dom = new JSDOM(html, { runScripts: "dangerously", resources: "usable" });
    document = dom.window.document;
    window = dom.window;
    global.window = dom.window;
    global.document = dom.window.document;
  });

  it("Logo load", () => {
    const logos = document.querySelectorAll(".logos img");
    const expectedLogos = [
      "bmw.webp", "aston.webp", "ferrari.webp", "ford.webp", "jaguar.webp", "kia.webp",
      "lexus.webp", "mercedes.webp", "porsche.webp", "tesla.webp", "volkswagen.webp",
      "infinity.webp", "volvo.webp", "audi.webp", "bentley.webp", "toyota.webp"
    ];
  
    logos.forEach((logo, index) => {
      const src = logo.getAttribute("src");
      expect(src).toContain(expectedLogos[index]);
    });
  
    expect(logos.length).toBe(expectedLogos.length);
  });  

  it("Nav links check", () => {
    const navLinks = document.querySelectorAll("nav a");
    const expectedLinks = ["login.html", "main.html", "wyszukiwarka.html", "contact.html"];
    
    navLinks.forEach((link, index) => {
      expect(link.getAttribute("href")).toBe(expectedLinks[index]);
    });
  });

  it("Footer with appropriate values", () => {
    const footer = document.querySelector("footer.footer");
    expect(footer).not.toBeNull(); // Stopka powinna istnieć
    expect(footer.textContent).toContain("©2024 Krzysztof Skorupski | All Rights Reserved");
  });  

  it("Correct page title", () => {
    const pageTitle = document.querySelector("title").textContent;
    expect(pageTitle).toBe("Strona główna");
  });
});
