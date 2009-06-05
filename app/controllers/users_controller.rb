class UsersController < Clearance::UsersController 
  before_filter :signed_in_as_admin?, :only => [ :index, :show ]
  before_filter :signed_in?, :only => [ :edit, :update ]

  def index
    @users = User.find :all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    respond_to do |format|
      if @user.update_attributes(params[:user])
        flash[:notice] = 'User Record was successfully updated.'
        format.html { redirect_to(edit_user_url(@user)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
end
