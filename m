Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id B27D8598D7
	for <lists.bridge@lfdr.de>; Fri, 28 Jun 2019 12:55:56 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 440EAC8F;
	Fri, 28 Jun 2019 10:55:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2FA80C77
	for <bridge@lists.linux-foundation.org>;
	Fri, 28 Jun 2019 10:55:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sipsolutions.net (s3.sipsolutions.net [144.76.43.62])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 86A8913A
	for <bridge@lists.linux-foundation.org>;
	Fri, 28 Jun 2019 10:55:40 +0000 (UTC)
Received: by sipsolutions.net with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
	(envelope-from <johannes@sipsolutions.net>)
	id 1hgoXW-0007Gu-QZ; Fri, 28 Jun 2019 12:55:34 +0200
Message-ID: <ef0411526d0e699a590c1546507cd179e73e8559.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov
	<alexei.starovoitov@gmail.com>
Date: Fri, 28 Jun 2019 12:55:33 +0200
In-Reply-To: <fa2b9787-c658-ac49-1c35-0d84d52b3ec1@iogearbox.net>
References: <68c99662210c8e9e37f198ddf8cb00bccf301c4b.camel@sipsolutions.net>
	<20190615151913.cgrfyflwwnhym4u2@ast-mbp.dhcp.thefacebook.com>
	<e487656b854ca999d14eb8072e5553eb2676a9f4.camel@sipsolutions.net>
	<fa2b9787-c658-ac49-1c35-0d84d52b3ec1@iogearbox.net>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Toshiaki Makita <makita.toshiaki@lab.ntt.co.jp>,
	Jiri Pirko <jiri@mellanox.com>, nikolay@cumulusnetworks.com,
	netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org,
	Zahari Doychev <zahari.doychev@linux.com>, jhs@mojatatu.com,
	Simon Horman <simon.horman@netronome.com>, David Ahern <dsahern@gmail.com>,
	Cong Wang <xiyou.wangcong@gmail.com>
Subject: Re: [Bridge] VLAN tags in mac_len
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

On Mon, 2019-06-17 at 10:49 +0200, Daniel Borkmann wrote:

> > > > Any other thoughts?
> > > 
> > > imo skb_vlan_push() should still change mac_len.
> > > tc, ovs, bpf use it and expect vlan to be part of L2.
> > 
> > I'm not sure tc really cares, but it *is* a reasonable argument to make.
> > 
> > Like I said, whichever way I look at the problem, a different solution
> > looks more reasonable ;-)
> 
> Agree with Alexei that the approach which would be least confusing and/or
> potentially causing regressions might be to go for 1). 

Toshiaki explained already that (1) [changing the bridge code] isn't
sufficient, but Zahari is going to send patches to do (1) since that
lets use disentangle the bridge code from the rest of the discussion,
basically making it able to handle anything we throw at it.

> tc *does* care at least
> for the *BPF* case. In sch_clsact we have the ingress and egress hook where we
> can attach to and programs don't need to care where they are being attached
> since for both cases they see skb->data starting at eth header! In order to
> do this, we do a __skb_push()/__skb_pull() dance based on skb->mac_len depending
> from where we come. This also means that if a program pushed/popped a vlan tag,
> this still must be correct wrt expectations for the receive side. It is essential
> that there is consistent behavior on skb->mac_len given skbs can also be redirected
> from TX->RX or RX->TX(->RX), so that we don't pull to a wrong offset next time.

As somebody (also Toshiaki I think) explained, this is already not right
and tc mirred is broken.

So I still think we have a semantic problem here with mac_len and TX/RX,
but it's not something I feel I'm competent enough to really address.

johannes

