class FiveController < ApplicationController
    def main
        if user_signed_in? 
        
        redirect_to '/five/sa'
        
        else 
        
        end
        
      
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
        
        while(true)
            @result = User.where(:univ => params[:search]).sample
            
            if @result.email != current_user.email
                break;
            end
        end
        
        
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
    
    
    def main2
   
        
    end

end
