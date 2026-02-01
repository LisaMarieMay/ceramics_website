# Lisa May Ceramics Website

Quarto-based portfolio site for handmade ceramics.

## Site structure
- `pieces/` - Individual piece pages (.qmd files)
- `images/` - All images (JPG preferred, 1000px long edge currently, moving to 1600px)
- `mugs.qmd`, etc. - Category listing pages

## Conventions
- Categories: `available for purchase`, `work in progress`, `sculpture`, `mugs`, `crows`, `whales`, `sgraffito`, etc.
- `work in progress` items should have `draft: true` (don't publish unfinished pieces)
- For sale items include "Available for Purchase" and "Price: $X" at top of content (two trailing spaces after "Purchase" for line break)
- Alt text uses `fig-alt` attribute (not bracket syntax) to avoid visible captions
- Lightbox galleries use `group="name"` attribute for navigation between images
- Piece page pattern: hero image at top, then `layout-ncol=2` or `layout-ncol=3` grid for additional views
- For 4 total images: use `layout-ncol=3` (1 hero + 3 in one row)
- For 5+ images: use `layout-ncol=2` (1 hero + 2x2 grid)
- Reference/meme images: save locally, display side-by-side with `layout-ncol=2`, add credit line at bottom in italics

## Image metadata
- All images have copyright: "© Lisa May"
- Artist/Creator: "Lisa May"
- Copyright Notice: "© Lisa May - lisamayceramics.com"
- GPS and device info stripped for privacy

### Command to process new images:
```bash
exiftool -overwrite_original \
  '-GPS*=' \
  -Make= \
  -Model= \
  -Software= \
  -SerialNumber= \
  -LensInfo= \
  -LensModel= \
  -LensSerialNumber= \
  -Copyright="© Lisa May" \
  -Artist="Lisa May" \
  -Creator="Lisa May" \
  -CopyrightNotice="© Lisa May - lisamayceramics.com" \
  images/*.jpg images/*.png
```

## Authorized actions
- Web research is authorized (viewing websites for pricing, technique info, etc.)

## Owner
Lisa May - lisamayceramics.com
