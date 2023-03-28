require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../../../../../models/workbook_chart_gridlines_format'
require_relative '../../../../../../../../../../../../drives'
require_relative '../../../../../../../../../../../item'
require_relative '../../../../../../../../../../items'
require_relative '../../../../../../../../../item'
require_relative '../../../../../../../../workbook'
require_relative '../../../../../../../worksheets'
require_relative '../../../../../../item'
require_relative '../../../../../charts'
require_relative '../../../../item'
require_relative '../../../axes'
require_relative '../../series_axis'
require_relative '../minor_gridlines'
require_relative './format'
require_relative './line/line_request_builder'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Worksheets
                            module Item
                                module Charts
                                    module Item
                                        module Axes
                                            module SeriesAxis
                                                module MinorGridlines
                                                    module Format
                                                        ## 
                                                        # Provides operations to manage the format property of the microsoft.graph.workbookChartGridlines entity.
                                                        class FormatRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                            
                                                            ## 
                                                            # Provides operations to manage the line property of the microsoft.graph.workbookChartGridlinesFormat entity.
                                                            def line()
                                                                return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Worksheets::Item::Charts::Item::Axes::SeriesAxis::MinorGridlines::Format::Line::LineRequestBuilder.new(@path_parameters, @request_adapter)
                                                            end
                                                            ## 
                                                            ## Instantiates a new FormatRequestBuilder and sets the default values.
                                                            ## @param path_parameters Path parameters for the request
                                                            ## @param request_adapter The request adapter to use to execute the requests.
                                                            ## @return a void
                                                            ## 
                                                            def initialize(path_parameters, request_adapter)
                                                                super(path_parameters, request_adapter, "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/worksheets/{workbookWorksheet%2Did}/charts/{workbookChart%2Did}/axes/seriesAxis/minorGridlines/format{?%24select,%24expand}")
                                                            end
                                                            ## 
                                                            ## Delete navigation property format for drives
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a Fiber of void
                                                            ## 
                                                            def delete(request_configuration=nil)
                                                                request_info = self.to_delete_request_information(
                                                                    request_configuration
                                                                )
                                                                error_mapping = Hash.new
                                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                return @request_adapter.send_async(request_info, nil, error_mapping)
                                                            end
                                                            ## 
                                                            ## Represents the formatting of chart gridlines. Read-only.
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a Fiber of workbook_chart_gridlines_format
                                                            ## 
                                                            def get(request_configuration=nil)
                                                                request_info = self.to_get_request_information(
                                                                    request_configuration
                                                                )
                                                                error_mapping = Hash.new
                                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookChartGridlinesFormat.create_from_discriminator_value(pn) }, error_mapping)
                                                            end
                                                            ## 
                                                            ## Update the navigation property format in drives
                                                            ## @param body The request body
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a Fiber of workbook_chart_gridlines_format
                                                            ## 
                                                            def patch(body, request_configuration=nil)
                                                                raise StandardError, 'body cannot be null' if body.nil?
                                                                request_info = self.to_patch_request_information(
                                                                    body, request_configuration
                                                                )
                                                                error_mapping = Hash.new
                                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookChartGridlinesFormat.create_from_discriminator_value(pn) }, error_mapping)
                                                            end
                                                            ## 
                                                            ## Delete navigation property format for drives
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a request_information
                                                            ## 
                                                            def to_delete_request_information(request_configuration=nil)
                                                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                                request_info.url_template = @url_template
                                                                request_info.path_parameters = @path_parameters
                                                                request_info.http_method = :DELETE
                                                                unless request_configuration.nil?
                                                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                                                    request_info.add_request_options(request_configuration.options)
                                                                end
                                                                return request_info
                                                            end
                                                            ## 
                                                            ## Represents the formatting of chart gridlines. Read-only.
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
                                                            ## Update the navigation property format in drives
                                                            ## @param body The request body
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a request_information
                                                            ## 
                                                            def to_patch_request_information(body, request_configuration=nil)
                                                                raise StandardError, 'body cannot be null' if body.nil?
                                                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                                request_info.url_template = @url_template
                                                                request_info.path_parameters = @path_parameters
                                                                request_info.http_method = :PATCH
                                                                request_info.headers.add('Accept', 'application/json')
                                                                unless request_configuration.nil?
                                                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                                                    request_info.add_request_options(request_configuration.options)
                                                                end
                                                                request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
                                                                return request_info
                                                            end

                                                            ## 
                                                            # Represents the formatting of chart gridlines. Read-only.
                                                            class FormatRequestBuilderGetQueryParameters
                                                                
                                                                ## 
                                                                # Expand related entities
                                                                attr_accessor :expand
                                                                ## 
                                                                # Select properties to be returned
                                                                attr_accessor :select
                                                                ## 
                                                                ## Maps the query parameters names to their encoded names for the URI template parsing.
                                                                ## @param original_name The original query parameter name in the class.
                                                                ## @return a string
                                                                ## 
                                                                def get_query_parameter(original_name)
                                                                    raise StandardError, 'original_name cannot be null' if original_name.nil?
                                                                    case original_name
                                                                        when "expand"
                                                                            return "%24expand"
                                                                        when "select"
                                                                            return "%24select"
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
                            end
                        end
                    end
                end
            end
        end
    end
end
