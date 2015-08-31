class FiveController < ApplicationController
    
    def main
        if user_signed_in? 
        
        redirect_to '/five/oh'
        
        end
        
      
    end
    
    def lee
        
    end
    
    def sam
        
    end
    
    def sa
        
    end
    
    def oh
        
        @posts = Post.all
        @posts2 = Post.paginate(:page => params[:page], :per_page => 5)
    end
    
    def read
        @detail = Post.find(params[:id]) 
        @num = User.where(:email => params[:selected])
        @num2 = @num.first
    end

    def yuk
        @result = Post.where(:univ => params[:search])
    end
    
    def chil
        
        while(true)
            @result = User.where(:univ => params[:search])
            @result2 = @result.sample
            
            if @result2.email != current_user.email
                break;
            elsif @result.nil?
                return redirect_to '/'
            else @result.count == 1 && @result2.email == current_user.email
                return redirect_to '/'
                
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
        post.number = params[:number]
        post.post_content = params[:content]
        post.univ = params[:search]
        post.email = params[:email]
        post.sex = params[:sex]
        post.save
    end
    
    def modify2
        @check2 = Post.find(params[:id])
        
    end
    
    def modify
        @one_post = Post.find(params[:id])
    end
    
    
    def update
        one_post = Post.find(params[:id])
        one_post.post_univ=params[:univ]
        one_post.post_univ_other = params[:univ_other]
        one_post.number = params[:number]
        one_post.post_password = params[:passwd]
        one_post.post_content=params[:content]
        one_post.save
         redirect_to '/'
    end
    
    def write_reply
        # 해당 게시물의 댓글들의 이메일들 중 하나가 내 이메일이랑 일치했을 때 
        my_reply = Reply.new
        my_reply.email = params[:email]
        my_reply.post_id = params[:post_id]
        my_reply.content = params[:myreply]
        my_reply.user_id = current_user.id
        
        unless(Post.find(params[:post_id]).replies.where(user_id: current_user.id).first) #사실 이게 될런지 안될런지 모르겠음 ㅋㅋ 근데 안되면 each do로 하나씩 검사해주면 될듯
             my_reply.save
        else
            #나중에 자바스크립트 alert넣어주기!(이미 댓글을 등록하셨습니다)
        end
       
        redirect_to(:back)
    end
    
    def delete
        @one_post=Post.find(params[:id])
        @passwd_check = params[:passwd_check]
        if(@one_post.post_password==@passwd_check)
            @one_post.destroy
            redirect_to '/five/oh'
        end
    end
    
    def delete2
        @one_reply = Reply.find(params[:id])
        @one_reply.destroy
        redirect_to(:back)
    end
    
    def modify3
        @check2 = Reply.find(params[:id])
    end
    
    def update2
        my_reply = Reply.find(params[:id])
        my_reply.email = params[:email]
        my_reply.post_id = params[:post_id]
        my_reply.content = params[:myreply]
        my_reply.user_id = current_user.id
        my_reply.save
    end
    
    
    def main2
        
        
        
    end
    
    
    
end


