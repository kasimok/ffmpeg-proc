#include <stdio.h>
#include <libavcodec/avcodec.h>

int main(int argc, char const *argv[])
{

  AVCodecParserContext *parser = av_parser_init(AV_CODEC_ID_H264);
  const AVCodec *codec = avcodec_find_decoder(AV_CODEC_ID_H264);
  AVCodecContext *codec_context = avcodec_alloc_context3(codec);

  // declear a uint8_t array with 27 4d 00 28 ab 40 3c 01 13 f2 a0
  uint8_t sps[11] = {0x27, 0x4d, 0x00, 0x28, 0xab, 0x40, 0x3c, 0x01, 0x13, 0xf2, 0xa0};
  size_t sps_size = sizeof(sps) / sizeof(sps[0]);

  uint8_t *out_data;
  int out_data_size;

  av_parser_parse2(parser, codec_context, &out_data, &out_data_size, sps, sps_size, AV_NOPTS_VALUE, AV_NOPTS_VALUE, -1);

  // The parsed SPS data is now in codec_context

  avcodec_free_context(&codec_context);
  av_parser_close(parser);

  printf("Hello, World!\n");
  return 0;
}
