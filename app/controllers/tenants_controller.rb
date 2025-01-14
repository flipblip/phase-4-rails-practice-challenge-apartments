class TenantsController < ApplicationController

    def index
        render json: Tenant.all, status: :ok
    end

    def show
        tenant = Tenant.find_by(id:params[:id])
        if tenant
            render json: tenant, status: :ok
        else
            render json: {errors: "Cant find tenant"}
        end
    end

    def create
        tenant = Tenant.create!(tenant_params)
        render json: tenant, status: :created
    end

    def update
        tenant = Tenant.find_by(id:params[:id])
        if tenant
            tenant.update(tenant_params)
            render json: tenant, status: :accepted
        else
            render json: {error: "Apartment not found"}, status: :not_found
        end
    end

    def destroy
        tenant = Tenant.find_by(id:params[:id])
        if tenant
            tenant.destroy
            head :no_content
        else
            render json: {error: "Tenant not found"}
        end
    end

    private

    def tenant_params
        params.permit(:name, :age, :apartment_id, :lease_id)
    end

end
