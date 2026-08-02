-- Supabase schema for showcase_products and showcase_reviews

-- Create products table
CREATE TABLE IF NOT EXISTS showcase_products (
  id text PRIMARY KEY,
  name text NOT NULL,
  category text,
  image_url text,
  description text,
  specs text,
  process text,
  created_at timestamptz DEFAULT now()
);

-- Create reviews table
CREATE TABLE IF NOT EXISTS showcase_reviews (
  id text PRIMARY KEY,
  name text NOT NULL,
  role text,
  rating int DEFAULT 5,
  comment text NOT NULL,
  blocked boolean DEFAULT false,
  reply text,
  created_at timestamptz DEFAULT now()
);
