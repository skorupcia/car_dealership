const fs = require("fs");
const path = require("path");
const { JSDOM } = require("jsdom");

describe("Testy strony kontaktowej", () => {
  let document, window;

  beforeEach(() => {
    const html = fs.readFileSync(path.resolve(__dirname, "../contact.html"), "utf8");
    const dom = new JSDOM(html, { runScripts: "dangerously", resources: "usable" });
    document = dom.window.document;
    window = dom.window;
    global.window = dom.window;
    global.document = dom.window.document;
  });

  // Test 1: Linki nawigacyjne
  it("Powinno zawierać poprawne linki w nawigacji", () => {
    const navLinks = document.querySelectorAll("nav a");
    const expectedLinks = ["login.html", "main.html", "wyszukiwarka.html", "contact.html"];

    navLinks.forEach((link, index) => {
      expect(link.getAttribute("href")).toBe(expectedLinks[index]);
    });
  });

  // Test 2: Formularz kontaktowy
  it("Powinno zawierać formularz kontaktowy z odpowiednimi polami", () => {
    const form = document.querySelector("form[name='contact_form']");
    expect(form).not.toBeNull(); // Formularz powinien istnieć

    // Sprawdzamy pola formularza
    expect(form.querySelector("#fname")).not.toBeNull();
    expect(form.querySelector("#lname")).not.toBeNull();
    expect(form.querySelector("#tel")).not.toBeNull();
    expect(form.querySelector("#reason")).not.toBeNull();
    expect(form.querySelector("#mes")).not.toBeNull();
    expect(form.querySelector("input[type='submit']")).not.toBeNull();
  });

  // Test 3: Opcje w polu "Powód"
  it("Powinno zawierać poprawne opcje w polu 'Powód'", () => {
    const reasonOptions = Array.from(document.querySelector("#reason").options).map(option => option.value);
    const expectedOptions = ["def", "Brak samochodu", "Negocjacja", "Gwarancja"];
    expect(reasonOptions).toEqual(expectedOptions);
  });

  // Test 4: Sekcja z mapą
  it("Powinno zawierać sekcję z mapą o poprawnym źródle", () => {
    const mapIframe = document.querySelector("iframe");
    expect(mapIframe).not.toBeNull(); // Sekcja mapy powinna istnieć

    // Sprawdzamy URL mapy
    const src = mapIframe.getAttribute("src");
    expect(src).toContain("https://www.google.com/maps/embed");
    expect(src).toContain("Dealer%20BMW%20Zdunek%20Gdynia");
  });

  // Test 5: Stopka
  it("Powinno zawierać stopkę z odpowiednią treścią", () => {
    const footer = document.querySelector("footer.footer");
    expect(footer).not.toBeNull(); // Stopka powinna istnieć
    expect(footer.textContent).toContain("©2024 Krzysztof Skorupski | All Rights Reserved");
  });
});
