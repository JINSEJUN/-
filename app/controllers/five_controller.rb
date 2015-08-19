class FiveController < ApplicationController
    def main
        
    end
    
    def lee
        
    end
    
    def sam
        
    end
    
    def sa
        
    end
    
    def oh
        
    end

    def yuk
        
    end
    
    def chil
        
    end
    
    def pal
        
    end
    
    def goo

    end
    
    def sip
        @posts = Post.all
    end
    
    def write
        
        post = Post.new
        post.post_univ = params[:univ]
        post.post_univ_other = params[:univ_other]
        post.post_password = params[:passwd]
        post.post_content = params[:content]
        post.save
        
      
    end

end
