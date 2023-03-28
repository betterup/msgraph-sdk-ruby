require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class MailClusterEvidence < MicrosoftGraph::Models::Security::AlertEvidence
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The clustering logic of the emails inside the cluster.
                @cluster_by
                ## 
                # The value utilized to cluster the similar emails.
                @cluster_by_value
                ## 
                # Count of emails in the email cluster.
                @email_count
                ## 
                # Unique identifiers for the emails in the cluster, generated by Microsoft 365.
                @network_message_ids
                ## 
                # The query used to identify the email cluster.
                @query
                ## 
                # Uniform resource name (URN) of the automated investigation where the cluster was identified.
                @urn
                ## 
                ## Gets the clusterBy property value. The clustering logic of the emails inside the cluster.
                ## @return a string
                ## 
                def cluster_by
                    return @cluster_by
                end
                ## 
                ## Sets the clusterBy property value. The clustering logic of the emails inside the cluster.
                ## @param value Value to set for the cluster_by property.
                ## @return a void
                ## 
                def cluster_by=(value)
                    @cluster_by = value
                end
                ## 
                ## Gets the clusterByValue property value. The value utilized to cluster the similar emails.
                ## @return a string
                ## 
                def cluster_by_value
                    return @cluster_by_value
                end
                ## 
                ## Sets the clusterByValue property value. The value utilized to cluster the similar emails.
                ## @param value Value to set for the cluster_by_value property.
                ## @return a void
                ## 
                def cluster_by_value=(value)
                    @cluster_by_value = value
                end
                ## 
                ## Instantiates a new MailClusterEvidence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a mail_cluster_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return MailClusterEvidence.new
                end
                ## 
                ## Gets the emailCount property value. Count of emails in the email cluster.
                ## @return a int64
                ## 
                def email_count
                    return @email_count
                end
                ## 
                ## Sets the emailCount property value. Count of emails in the email cluster.
                ## @param value Value to set for the email_count property.
                ## @return a void
                ## 
                def email_count=(value)
                    @email_count = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "clusterBy" => lambda {|n| @cluster_by = n.get_string_value() },
                        "clusterByValue" => lambda {|n| @cluster_by_value = n.get_string_value() },
                        "emailCount" => lambda {|n| @email_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                        "networkMessageIds" => lambda {|n| @network_message_ids = n.get_collection_of_primitive_values(String) },
                        "query" => lambda {|n| @query = n.get_string_value() },
                        "urn" => lambda {|n| @urn = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the networkMessageIds property value. Unique identifiers for the emails in the cluster, generated by Microsoft 365.
                ## @return a string
                ## 
                def network_message_ids
                    return @network_message_ids
                end
                ## 
                ## Sets the networkMessageIds property value. Unique identifiers for the emails in the cluster, generated by Microsoft 365.
                ## @param value Value to set for the network_message_ids property.
                ## @return a void
                ## 
                def network_message_ids=(value)
                    @network_message_ids = value
                end
                ## 
                ## Gets the query property value. The query used to identify the email cluster.
                ## @return a string
                ## 
                def query
                    return @query
                end
                ## 
                ## Sets the query property value. The query used to identify the email cluster.
                ## @param value Value to set for the query property.
                ## @return a void
                ## 
                def query=(value)
                    @query = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("clusterBy", @cluster_by)
                    writer.write_string_value("clusterByValue", @cluster_by_value)
                    writer.write_object_value("emailCount", @email_count)
                    writer.write_collection_of_primitive_values("networkMessageIds", @network_message_ids)
                    writer.write_string_value("query", @query)
                    writer.write_string_value("urn", @urn)
                end
                ## 
                ## Gets the urn property value. Uniform resource name (URN) of the automated investigation where the cluster was identified.
                ## @return a string
                ## 
                def urn
                    return @urn
                end
                ## 
                ## Sets the urn property value. Uniform resource name (URN) of the automated investigation where the cluster was identified.
                ## @param value Value to set for the urn property.
                ## @return a void
                ## 
                def urn=(value)
                    @urn = value
                end
            end
        end
    end
end
