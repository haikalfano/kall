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

-- Allow the public showcase admin panel to manage rows with the anon key.
ALTER TABLE showcase_products ENABLE ROW LEVEL SECURITY;
ALTER TABLE showcase_reviews ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Public can read products" ON showcase_products;
CREATE POLICY "Public can read products"
  ON showcase_products FOR SELECT TO anon USING (true);

DROP POLICY IF EXISTS "Public can insert products" ON showcase_products;
CREATE POLICY "Public can insert products"
  ON showcase_products FOR INSERT TO anon WITH CHECK (true);

DROP POLICY IF EXISTS "Public can update products" ON showcase_products;
CREATE POLICY "Public can update products"
  ON showcase_products FOR UPDATE TO anon USING (true) WITH CHECK (true);

DROP POLICY IF EXISTS "Public can delete products" ON showcase_products;
CREATE POLICY "Public can delete products"
  ON showcase_products FOR DELETE TO anon USING (true);

DROP POLICY IF EXISTS "Public can read reviews" ON showcase_reviews;
CREATE POLICY "Public can read reviews"
  ON showcase_reviews FOR SELECT TO anon USING (true);

DROP POLICY IF EXISTS "Public can insert reviews" ON showcase_reviews;
CREATE POLICY "Public can insert reviews"
  ON showcase_reviews FOR INSERT TO anon WITH CHECK (true);

DROP POLICY IF EXISTS "Public can update reviews" ON showcase_reviews;
CREATE POLICY "Public can update reviews"
  ON showcase_reviews FOR UPDATE TO anon USING (true) WITH CHECK (true);

DROP POLICY IF EXISTS "Public can delete reviews" ON showcase_reviews;
CREATE POLICY "Public can delete reviews"
  ON showcase_reviews FOR DELETE TO anon USING (true);
