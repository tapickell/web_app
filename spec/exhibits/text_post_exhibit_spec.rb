require_relative '../spec_helper_lite'
require_relative '../../app/exhibits/text_post_exhibit'

describe TextPostExhibit do
	before do
		@post = OpenStruct.new(
			title: "TITLE",
			body: "BODY",
			pubdate: "PUBDATE")
		@content = stub!
		@it = TextPostExhibit.new(@post, @context)
	end

	it "renders itself with the appropraite partial" do
		mock(@context).render( psrtial: "/posts/text_body", locals: {post: self}) { "THE_HTML" }
		@it.render_body.must_equal "THE_HTML"
	end
end

