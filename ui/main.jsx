import React from "react";
import { createRoot } from "react-dom/client";
import App from "./App.jsx";

async function main() {
  const rootElt = document.getElementById("app");
  const root = createRoot(rootElt);
  root.render(<App />);
}

window.onload = main;
