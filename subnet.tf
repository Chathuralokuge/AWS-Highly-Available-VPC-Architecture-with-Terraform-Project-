resource "aws_subnet" "public_a" {
  vpc_id                  = aws_vpc.aws_prod.id
  cidr_block              = var.public_subnet_a_cidr
  availability_zone       = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true

  tags = merge(local.common_tags, {
    Name = "${local.name_prefix}-public-a"
    Tier = "Public"
  })
}

resource "aws_subnet" "public_b" {
  vpc_id                  = aws_vpc.aws_prod.id
  cidr_block              = var.public_subnet_b_cidr
  availability_zone       = data.aws_availability_zones.available.names[1]
  map_public_ip_on_launch = true

  tags = merge(local.common_tags, {
    Name = "${local.name_prefix}-public-b"
    Tier = "Public"
  })
}

resource "aws_subnet" "private_a" {
  vpc_id            = aws_vpc.aws_prod.id
  cidr_block        = var.private_subnet_a_cidr
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = merge(local.common_tags, {
    Name = "${local.name_prefix}-private-a"
    Tier = "Private"
  })
}

resource "aws_subnet" "private_b" {
  vpc_id            = aws_vpc.aws_prod.id
  cidr_block        = var.private_subnet_b_cidr
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = merge(local.common_tags, {
    Name = "${local.name_prefix}-private-b"
    Tier = "Private"
  })
}
