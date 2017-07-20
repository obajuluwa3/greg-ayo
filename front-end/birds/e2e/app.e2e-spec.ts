import { BirdsPage } from './app.po';

describe('birds App', () => {
  let page: BirdsPage;

  beforeEach(() => {
    page = new BirdsPage();
  });

  it('should display welcome message', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('Welcome to app!');
  });
});
