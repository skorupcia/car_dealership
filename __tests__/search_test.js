const fs = require("fs");
const path = require("path");
const { JSDOM } = require("jsdom");

describe("Testy strony wyszukiwania samochodów", () => {
  let document, window;

  beforeEach(() => {
    const html = fs.readFileSync(path.resolve(__dirname, "../wyszukiwarka.html"), "utf8");
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

  // Test 2: Formularz wyszukiwania
  it("Powinno zawierać formularz wyszukiwania z polem tekstowym i przyciskami", () => {
    const form = document.querySelector("#searchForm");
    expect(form).not.toBeNull(); // Formularz powinien istnieć

    // Sprawdzamy obecność pola tekstowego i przycisków
    const searchInput = form.querySelector("#searchInput");
    const searchButton = form.querySelector("button[type='submit']");
    expect(searchInput).not.toBeNull();
    expect(searchButton).not.toBeNull();
  });

  // Test 3: Przycisków do wyszukiwania po marce
  it("Powinno zawierać przyciski wyszukiwania po markach: BMW, Audi, Mercedes-Benz, Ford", () => {
    const brandButtons = Array.from(document.querySelectorAll(".bt")).map(btn => btn.textContent.trim());
    const expectedBrands = ["Bmw", "Audi", "Mercedes-Benz", "Ford"];
    expect(brandButtons).toEqual(expectedBrands);
  });

  // Test 4: Funkcja wyszukiwania po marce
  it("Powinna wywołać funkcję searchByBrand po kliknięciu przycisku marki", () => {
    const searchByBrandMock = jest.fn();
    window.searchByBrand = searchByBrandMock;

    const bmwButton = document.querySelector("button.bt");
    bmwButton.click();
    expect(searchByBrandMock).toHaveBeenCalledWith("BMW");
  });

  // Test 5: Sekcja wyników wyszukiwania
  it("Powinno zawierać sekcję na wyniki wyszukiwania o id 'carList'", () => {
    const carList = document.querySelector("#carList");
    expect(carList).not.toBeNull(); // Sekcja wyników powinna istnieć
  });
});
