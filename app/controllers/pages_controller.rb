class PagesController < ApplicationController
    def about
        @title="About Us"
        @content = "This is content"
    end
    
end
