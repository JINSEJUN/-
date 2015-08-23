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
    
    
    def modify
        @one_post = Post.find(params[:id])
    end
    
    def checkmodify
        @one_post = Post.find(params[:id])
        @passwd_check = params[:passwd_check]
        if(@one_post.post_password==@passwd_check)
            
        end
    end
    
    def update
        one_post = Post.find(params[:id])
        one_post.post_univ=params[:univ]
        one_post.post_univ_other = params[:univ_other]
        one_post.post_password = params[:passwd]
        one_post.post_content=params[:content]
        one_post.save
         redirect_to '/'
    end
    
    def write_reply
        my_reply = Reply.new
        my_reply.post_id = params[:post_id]
        my_reply.content = params[:myreply]
        my_reply.save
        redirect_to '/five/sip'
    end
    
    def delete
        @one_post=Post.find(params[:id])
        @passwd_check = params[:passwd_check]
        if(@one_post.post_password==@passwd_check)
            @one_post.destroy
            redirect_to '/five/sip'
        end
    end
    
    
    
    def main2
   
        
    end
    
    
    

end
