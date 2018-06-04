describe('c:helloWorld', function () {
    it('verify component rendering', function (done) {
        $T.createComponent('c:hw', {}, true)
            .then(function(cmp) {
                expect(cmp.find("message").getElement().innerHTML).toBe('Hello');
                done();
            }).catch(function (e) {
                done.fail(e);
            });
    });
});