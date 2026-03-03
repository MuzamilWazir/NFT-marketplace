import React from 'react'

const Header = () => {
  return (
     <nav className="w-full bg-white text-black border-b border-gray-200">
      <div className="max-w-7xl mx-auto px-6 py-4 flex items-center justify-between">
        
        {/* Logo */}
        <div className="text-2xl font-serif font-semibold">
          NFTMarket
        </div>

        {/* Navigation Links */}
        <div className="hidden md:flex items-center space-x-8 text-sm font-medium">
          <a href="#" className="hover:opacity-70 transition">Explore</a>
          <a href="#" className="hover:opacity-70 transition">Create</a>
          <a href="#" className="hover:opacity-70 transition">Collections</a>
          <a href="#" className="hover:opacity-70 transition">Stats</a>
        </div>

        {/* Connect Button */}
        <div>
          <button className="border border-black px-5 py-2 text-sm font-medium hover:bg-black hover:text-white transition">
            Connect Wallet
          </button>
        </div>

      </div>
    </nav>
  )
}

export default Header