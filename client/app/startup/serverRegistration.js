// Shows the mapping from the exported object to the name used by the server rendering.
import ReactOnRails from 'react-on-rails';

import OnboardingGuideApp from './OnboardingGuideApp';
import OnboardingTopBar from './OnboardingTopBarApp';
import TopbarApp from './TopbarApp';
import SearchPageApp from './SearchPageApp';
import MarketplaceLandingPageApp from './MarketplaceLandingPageApp';

ReactOnRails.register({
  OnboardingGuideApp,
  OnboardingTopBar,
  TopbarApp,
  SearchPageApp,
  MarketplaceLandingPageApp,
});

ReactOnRails.registerStore({
});
