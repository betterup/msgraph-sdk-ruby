require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../sites'
require_relative '../../../item'
require_relative '../../onenote'
require_relative '../notebooks'
require_relative './get_recent_notebooks_with_include_personal_notebooks'

module MicrosoftGraph
    module Sites
        module Item
            module Onenote
                module Notebooks
                    module GetRecentNotebooksWithIncludePersonalNotebooks
                        ## 
                        # Provides operations to call the getRecentNotebooks method.
                        class GetRecentNotebooksWithIncludePersonalNotebooksRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            ## Instantiates a new GetRecentNotebooksWithIncludePersonalNotebooksRequestBuilder and sets the default values.
                            ## @param include_personal_notebooks Usage: includePersonalNotebooks={includePersonalNotebooks}
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter, include_personal_notebooks=nil)
                                super(path_parameters, request_adapter, "{+baseurl}/sites/{site%2Did}/onenote/notebooks/getRecentNotebooks(includePersonalNotebooks={includePersonalNotebooks}){?%24top,%24skip,%24search,%24filter,%24count}")
                            end
                            ## 
                            ## Invoke function getRecentNotebooks
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of get_recent_notebooks_with_include_personal_notebooks_response
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Sites::Item::Onenote::Notebooks::GetRecentNotebooksWithIncludePersonalNotebooks::GetRecentNotebooksWithIncludePersonalNotebooksResponse.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Invoke function getRecentNotebooks
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a request_information
                            ## 
                            def to_get_request_information(request_configuration=nil)
                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                request_info.url_template = @url_template
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :GET
                                request_info.headers.add('Accept', 'application/json')
                                unless request_configuration.nil?
                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                    request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                    request_info.add_request_options(request_configuration.options)
                                end
                                return request_info
                            end

                            ## 
                            # Invoke function getRecentNotebooks
                            class GetRecentNotebooksWithIncludePersonalNotebooksRequestBuilderGetQueryParameters
                                
                                ## 
                                # Include count of items
                                attr_accessor :count
                                ## 
                                # Filter items by property values
                                attr_accessor :filter
                                ## 
                                # Search items by search phrases
                                attr_accessor :search
                                ## 
                                # Skip the first n items
                                attr_accessor :skip
                                ## 
                                # Show only the first n items
                                attr_accessor :top
                                ## 
                                ## Maps the query parameters names to their encoded names for the URI template parsing.
                                ## @param original_name The original query parameter name in the class.
                                ## @return a string
                                ## 
                                def get_query_parameter(original_name)
                                    raise StandardError, 'original_name cannot be null' if original_name.nil?
                                    case original_name
                                        when "count"
                                            return "%24count"
                                        when "filter"
                                            return "%24filter"
                                        when "search"
                                            return "%24search"
                                        when "skip"
                                            return "%24skip"
                                        when "top"
                                            return "%24top"
                                        else
                                            return original_name
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
