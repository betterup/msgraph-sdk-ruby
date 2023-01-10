require 'microsoft_kiota_abstractions'
require_relative '../../../models/directory_object_collection_response'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../groups'
require_relative '../item'
require_relative './application/application_request_builder'
require_relative './count/count_request_builder'
require_relative './device/device_request_builder'
require_relative './group/group_request_builder'
require_relative './org_contact/org_contact_request_builder'
require_relative './service_principal/service_principal_request_builder'
require_relative './transitive_members'
require_relative './user/user_request_builder'

module MicrosoftGraph::Groups::Item::TransitiveMembers
    ## 
    # Provides operations to manage the transitiveMembers property of the microsoft.graph.group entity.
    class TransitiveMembersRequestBuilder
        
        ## 
        # Casts the previous resource to application.
        def application()
            return MicrosoftGraph::Groups::Item::TransitiveMembers::Application::ApplicationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to count the resources in the collection.
        def count()
            return MicrosoftGraph::Groups::Item::TransitiveMembers::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to device.
        def device()
            return MicrosoftGraph::Groups::Item::TransitiveMembers::Device::DeviceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to group.
        def group()
            return MicrosoftGraph::Groups::Item::TransitiveMembers::Group::GroupRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to orgContact.
        def org_contact()
            return MicrosoftGraph::Groups::Item::TransitiveMembers::OrgContact::OrgContactRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Casts the previous resource to servicePrincipal.
        def service_principal()
            return MicrosoftGraph::Groups::Item::TransitiveMembers::ServicePrincipal::ServicePrincipalRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        # Casts the previous resource to user.
        def user()
            return MicrosoftGraph::Groups::Item::TransitiveMembers::User::UserRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Instantiates a new TransitiveMembersRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/groups/{group%2Did}/transitiveMembers{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## The direct and transitive members of a group. Nullable.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of directory_object_collection_response
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DirectoryObjectCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## The direct and transitive members of a group. Nullable.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
        # The direct and transitive members of a group. Nullable.
        class TransitiveMembersRequestBuilderGetQueryParameters
            
            ## 
            # Include count of items
            attr_accessor :count
            ## 
            # Expand related entities
            attr_accessor :expand
            ## 
            # Filter items by property values
            attr_accessor :filter
            ## 
            # Order items by property values
            attr_accessor :orderby
            ## 
            # Search items by search phrases
            attr_accessor :search
            ## 
            # Select properties to be returned
            attr_accessor :select
            ## 
            # Skip the first n items
            attr_accessor :skip
            ## 
            # Show only the first n items
            attr_accessor :top
            ## 
            ## Maps the query parameters names to their encoded names for the URI template parsing.
            ## @param originalName The original query parameter name in the class.
            ## @return a string
            ## 
            def get_query_parameter(original_name)
                raise StandardError, 'original_name cannot be null' if original_name.nil?
                case original_name
                    when "count"
                        return "%24count"
                    when "expand"
                        return "%24expand"
                    when "filter"
                        return "%24filter"
                    when "orderby"
                        return "%24orderby"
                    when "search"
                        return "%24search"
                    when "select"
                        return "%24select"
                    when "skip"
                        return "%24skip"
                    when "top"
                        return "%24top"
                    else
                        return original_name
                end
            end
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class TransitiveMembersRequestBuilderGetRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
            ## 
            # Request query parameters
            attr_accessor :query_parameters
        end
    end
end