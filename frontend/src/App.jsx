import React from "react";
import { Route, Routes } from "react-router";
import HomePage from "./components/HomePage";
import Header from "./components/Header";
import Footer from "./components/Footer";

const App = () => {
  return (
    <div>
      <Header />

      <main>
        {" "}
        <Routes>
          <Route path="/" index element={<HomePage />} />
          {/* Define your routes here */}
        </Routes>
      </main>

      <Footer />
    </div>
  );
};

export default App;
