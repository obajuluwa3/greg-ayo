class BirdController < Sinatra::Base

	options '*' do
		response['Access-Control-Allow-Origin'] = '*'
		response['Access-Control-Allow-Headers'] = 'content-type'
		response['Access-Control-Allow-Methods'] = 'GET,POST,PATCH,DELETE'
		200
	end

	get '/' do
		response['Access-Control-Allow-Origin'] = '*'
		content_type :json
		birds = Bird.all.sort_by {|bird| bird.id}
		birds.to_json
	end

	get '/:id' do
		response['Access-Control-Allow-Origin'] = '*'
		content_type :json
		id = params[:id]
		bird = Bird.find(id)
		bird.to_json
	end

	post '/' do
		response['Access-Control-Allow-Origin'] = '*'
		content_type :json
		bird_info = JSON.parse(request.body.read)
		bird = Bird.new(bird_info)
		bird.save
		bird.to_json
	end

	patch '/:id' do
		response['Access-Control-Allow-Origin'] = '*'
		content_type :json
		id = params[:id]
		bird = Bird.find(id)
		bird_info = JSON.parse(request.body.read)
		bird.update_attributes(bird_info)
		bird.save
		birds = Bird.all.sort_by {|bird| bird.id}
		birds.to_json
	end

	delete '/:id' do
		response['Access-Control-Allow-Origin'] = '*'
		content_type :json
		id = params[:id]
		bird = Bird.find(id)
		bird.destroy
		birds = Bird.all.sort_by {|bird| bird.id}
		birds.to_json
	end

end
