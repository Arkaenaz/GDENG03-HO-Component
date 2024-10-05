struct VS_INPUT
{
    float4 pos : POSITION;
    float4 pos1 : POSITION1;
    float3 color : COLOR;
    float3 color1 : COLOR1;
};

struct VS_OUTPUT
{
    float4 pos : POSITION;
    float4 pos1 : POSITION1;
    float3 color : COLOR;
    float3 color1 : COLOR1;
};

cbuffer constant : register(b0)
{
    float angle;
};

VS_OUTPUT main(VS_INPUT input)
{
    VS_OUTPUT output = (VS_OUTPUT) 0;
    output.pos = lerp(input.pos, input.pos1, (sin(angle) + 1.0f) / 2.0f);
    output.pos1 = input.pos1;
    output.color = input.color;
    output.color1 = input.color1;
    return output;
}