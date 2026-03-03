import React from "react";

const HomePage = () => {
  return (
    <section className="overflow-hidden  py-16 relative" >
      <div className="marquee">
        <div className="marquee__track ">
          <h1 className="marquee__text font-heading font-black">
            CREATIVE DESIGN — MODERN DEVELOPMENT — BRAND IDENTITY — UI / UX
            EXPERIENCE —
          </h1>

          {/* Duplicate for seamless loop */}
          <h1 className="marquee__text font-heading">
            CREATIVE DESIGN — MODERN DEVELOPMENT — BRAND IDENTITY — UI / UX
            EXPERIENCE —
          </h1>
        </div>
      </div>

      <div className=" absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 flex items-center space-x-6">
        <img
          src="/src/assets/HeroBackImg.png"
          alt="Hero Image"
          className="w-full h-auto mt-10 "
        />
      </div>
    </section>
  );
};

export default HomePage;
