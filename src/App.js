import React from "react";
import {
  BrowserRouter as Router,
  Routes,
  Route,
  Link
} from "react-router-dom";
import Products from "./Products";
import NoMatch from "./NoMatch";

export default function App() {
  return (
    <Router>
      <nav>
        <Link to="/Products">Products</Link>
      </nav>
      <Routes>
        {/* BUG: Only matches "/Products" case-sensitively */}
        <Route path="/Products" element={<Products />} />
        <Route path="*" element={<NoMatch />} />
      </Routes>
    </Router>
  );
}