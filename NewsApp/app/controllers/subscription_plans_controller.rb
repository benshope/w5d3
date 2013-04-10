class SubscriptionPlansController < ApplicationController
  def index
    @subscription_plans = SubscriptionPlan.all
  end

  def show
    @subscription_plan = SubscriptionPlan.find_by_id(params[:id])
  end

  def new
    @subscription_plan = SubscriptionPlan.new
  end

  def create
    @subscription_plan = SubscriptionPlan.new(params[:subscription_plan])
    if @subscription_plan.save
      redirect_to subscription_plan_path(@subscription_plan)
    else
      render :new
    end
  end

  def edit
    @subscription_plan = SubscriptionPlan.find_by_id(params[:id])
  end

  def update
    @subscription_plan = SubscriptionPlan.find_by_id(params[:id])
    if @subscription_plan.update_attributes(params[:subscription_plan])
      redirect_to subscription_plan_path(@subscription_plan)
    else
      render :edit
    end
  end

  def destroy
    @subscription_plan = SubscriptionPlan.find_by_id(params[:id])
    @subscription_plan.destroy
    redirect_to subscription_plans_path
  end
end
