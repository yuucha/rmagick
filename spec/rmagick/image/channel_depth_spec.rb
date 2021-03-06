RSpec.describe Magick::Image, "#channel_depth" do
  it "works" do
    image = described_class.new(20, 20)

    expect { image.channel_depth }.not_to raise_error
    expect { image.channel_depth(Magick::RedChannel) }.not_to raise_error
    expect { image.channel_depth(Magick::RedChannel, Magick::BlueChannel) }.not_to raise_error
    expect { image.channel_depth(Magick::GreenChannel, Magick::OpacityChannel) }.not_to raise_error
    expect { image.channel_depth(Magick::MagentaChannel, Magick::CyanChannel) }.not_to raise_error
    expect { image.channel_depth(Magick::CyanChannel, Magick::BlackChannel) }.not_to raise_error
    expect { image.channel_depth(Magick::GrayChannel) }.not_to raise_error
    expect { image.channel_depth(2) }.to raise_error(TypeError)
    expect(image.channel_depth(Magick::RedChannel)).to be_kind_of(Integer)
  end
end
