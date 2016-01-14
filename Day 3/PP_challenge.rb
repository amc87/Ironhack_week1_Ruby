# :id,
#  :id=,
#  :url,
#  :url=,
#  :title,
#  :title=,
#  :also_known_as,
#  :also_known_as=,
#  :cast_members,
#  :cast_member_ids,
#  :cast_characters,
#  :cast_members_characters,
#  :director,
#  :writers,
#  :trailer_url,
#  :genres,
#  :languages,
#  :countries,
#  :length,
#  :company,
#  :plot,
#  :plot_synopsis,
#  :plot_summary,
#  :poster,
#  :rating,
#  :votes,
#  :tagline,
#  :mpaa_rating,
#  :year,
#  :release_date,
#  :filming_locations,
#  :pry,
#  :__binding__,
#  :pretty_print,
#  :pretty_print_cycle,
#  :pretty_print_instance_variables,
#  :pretty_print_inspect,
#  :nil?,
#  :===,
#  :=~,
#  :!~,
#  :eql?,
#  :hash,
#  :<=>,
#  :class,
#  :singleton_class,
#  :clone,
#  :dup,
#  :itself,
#  :taint,
#  :tainted?,
#  :untaint,
#  :untrust,
#  :untrusted?,
#  :trust,
#  :freeze,
#  :frozen?,
#  :to_s,
#  :inspect,
#  :methods,
#  :singleton_methods,
#  :protected_methods,
#  :private_methods,
#  :public_methods,
#  :instance_variables,
#  :instance_variable_get,
#  :instance_variable_set,
#  :instance_variable_defined?,
#  :remove_instance_variable,
#  :instance_of?,
#  :kind_of?,
#  :is_a?,
#  :tap,
#  :send,
#  :public_send,
#  :respond_to?,
#  :extend,
#  :display,
#  :method,
#  :public_method,
#  :singleton_method,
#  :define_singleton_method,
#  :object_id,
#  :to_enum,
#  :enum_for,
#  :pretty_inspect,
#  :==,
#  :equal?,
#  :!,
#  :!=,
#  :instance_eval,
#  :instance_exec,
#  :__send__,
#  :__id__


require 'imdb'
require 'pry'

# i = Imdb::Movie.new("0095016")

# i.title
# #=> "Die Hard"

# i.cast_members.first
# #=> "Bruce Willis"

# i = Imdb::Search.new("Star Trek")

# binding.pry

# i.movies[0]
# #=> 97

title_read = IO.read('text.txt')

# puts title_read

# print title_read


new_array_titles = []
counter = 0 

each_title.each do |title|
	found_objects = Imdb::Search.new(title)
	new_array_titles.push(found_objects)
	first_seven = new_array_titles[counter].movies[0]
	counter += 1
	# puts found_objects.methods.movies
end
binding.pry





























