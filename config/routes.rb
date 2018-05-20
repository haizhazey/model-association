Rails.application.routes.draw do
  
  
  # 생성 페이지
  get '/' => 'notes#index'
  post '/notes/create' => 'notes#create'
  
  # 읽기 페이지 전체
  get '/notes/all' => 'notes#all'
  
  # 읽기 페이지 하나만
  get '/notes/one/:id' => 'notes#one'
  
  # 수정 페이지
  get '/notes/edit/:id' => 'notes#edit'
  patch '/notes/:id' => 'notes#update'
  
  # 삭제
  delete '/notes/:id/destroy' => 'notes#destroy'
end
