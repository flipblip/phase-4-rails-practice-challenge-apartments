class LeasesController < ApplicationController

    def index
        render json: Lease.all, status: :ok
    end

    def create
        lease = Lease.create!(lease_params)
        render json: lease, status: :created
    end

    def show
        lease = Lease.find_by(id:params[:id])
        if lease
            render json: lease, status: :ok
        else
            render json: {error: "Lease not found"}, status: :not_found
        end
    end

    def destroy
        lease = Lease.find_by(id:params[:id])
        if lease
            lease.destroy
            head :no_content
        else
            render json: {error: "Lease not found"}
        end
    end

    private
    
    def lease_params
        params.permit(:tenant_id, :apartment_id, :rent)
    end
end
