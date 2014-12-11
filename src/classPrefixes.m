// Class Prefixes example

// In this case, the project is called MoviePass.
// Therefore, preferred class prefix should be 'MP'





/* The Good */

// MPMovie.h
@interface MPMovie : NSObject

// MPMovieDetailViewController.h
@interface MPMovieDetailViewController : NSObject





/* The Bad */

// Movie.h
@interface Movie : NSObject

// MovieDetailViewController.h
@interface MovieDetailViewController : NSObject