Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EA8377B2
	for <lists.bridge@lfdr.de>; Thu,  6 Jun 2019 17:20:07 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7BA41D38;
	Thu,  6 Jun 2019 15:19:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7E7A4C51
	for <bridge@lists.linux-foundation.org>;
	Thu,  6 Jun 2019 15:19:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2C41E34F
	for <bridge@lists.linux-foundation.org>;
	Thu,  6 Jun 2019 15:19:50 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id c85so1721439pfc.1
	for <bridge@lists.linux-foundation.org>;
	Thu, 06 Jun 2019 08:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=+dI5swD1+omNHneKtJgThPzt3z+a6zgCfryKXerEk+I=;
	b=KpUcO0CnhBIu8G6mnGGrqCHe1Kkx45ZcW+oH2HZ2Kz7r+idRSFJWy0DVbMKv3k/uE/
	M/nUZ0pa9SZekl54rp6x3Vwe/QiB8ICNkwPBthR6RzgpCENAMQ0CMK5v9H1NIKzq+olP
	5EoyF3PiLb/LovgHPn8jgagX52/cJeJ6x4VhmFCbZD/1E1kCD/j6y9NP1SgkRn7jDKBX
	TK7bIdcWa3UO/PLu8KRVgxtvdv0xe6UzdcZAcp8XWK6uKNBvP5XB89OZC2ssq/cjozdJ
	MthlBYbsYBUoAD1Xr+9AYhFzp4WY04PuKZ3n1u8UdrzfLx0rRYn5pGDQVhNIHD2mHIES
	RqjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=+dI5swD1+omNHneKtJgThPzt3z+a6zgCfryKXerEk+I=;
	b=b2xPn99I+RDh7rq4SBAds+Y1p4UXVBqfNhwPOezV83H7HW46igCUpqLZuGRfpsRPhB
	5P2OMr5wo3JA+drnCeL/icYeWNBEpb00OAVKlfNVzlOwCu5N5X+Nu7JuJl2VcoCOJK8y
	0FNaKzhQoUSr/KT4E0ppbswPsx+agZUgQSeE4ZpSKc+atYt/56rrKYJVkXDCNtHrv7kX
	fox4ilSD43hlsuEgb0DW27LHx4vOvjS/oBDJT+/HSf8AxEidPVCTGJXaExYaYOqPeirK
	gNF0R3h2vydMvg5jenMWeajAvHY3xRhUZewN9Km8eZ5XlnEOZkBKeegTJJV66lWmAgEL
	KccQ==
X-Gm-Message-State: APjAAAUMCImTYoQpFitUQ1gMQYWMwf6VnwgniUEhRNYlk415JAyms2JW
	QQZzpvaQO8Z6Xkors8rgoLjnKg==
X-Google-Smtp-Source: APXvYqyJ6WKaIp3QZZDTH+D57pYIq7W1ryRZeSCGj3dL0yG9QANxq3U1mGe4wfmVIuc6w/W6v3LRNg==
X-Received: by 2002:a62:1483:: with SMTP id 125mr53844216pfu.137.1559834390511;
	Thu, 06 Jun 2019 08:19:50 -0700 (PDT)
Received: from brauner.io ([172.56.30.175])
	by smtp.gmail.com with ESMTPSA id i5sm4103104pfk.49.2019.06.06.08.19.42
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 06 Jun 2019 08:19:49 -0700 (PDT)
Date: Thu, 6 Jun 2019 17:19:39 +0200
From: Christian Brauner <christian@brauner.io>
To: Stephen Hemminger <stephen@networkplumber.org>
Message-ID: <20190606151937.mdpalfk7urvv74ub@brauner.io>
References: <20190606114142.15972-1-christian@brauner.io>
	<20190606114142.15972-2-christian@brauner.io>
	<20190606081440.61ea1c62@hermes.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190606081440.61ea1c62@hermes.lan>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ueberall@themenzentrisch.de, vapier@chromium.org, richardrose@google.com,
	bhthompson@google.com, nikolay@cumulusnetworks.com,
	netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, fw@strlen.de,
	linux-kernel@vger.kernel.org, joelhockey@chromium.org,
	tyhicks@canonical.com, coreteam@netfilter.org,
	netfilter-devel@vger.kernel.org, kadlec@blackhole.kfki.hu,
	smbarber@chromium.org, davem@davemloft.net, pablo@netfilter.org
Subject: Re: [Bridge] [PATCH RESEND net-next 1/2] br_netfilter: add struct
	netns_brnf
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

On Thu, Jun 06, 2019 at 08:14:40AM -0700, Stephen Hemminger wrote:
> On Thu,  6 Jun 2019 13:41:41 +0200
> Christian Brauner <christian@brauner.io> wrote:
> 
> > +struct netns_brnf {
> > +#ifdef CONFIG_SYSCTL
> > +	struct ctl_table_header *ctl_hdr;
> > +#endif
> > +
> > +	/* default value is 1 */
> > +	int call_iptables;
> > +	int call_ip6tables;
> > +	int call_arptables;
> > +
> > +	/* default value is 0 */
> > +	int filter_vlan_tagged;
> > +	int filter_pppoe_tagged;
> > +	int pass_vlan_indev;
> > +};
> 
> Do you really need to waste four bytes for each
> flag value. If you use a u8 that would work just as well.

I think we had discussed something like this but the problem why we
can't do this stems from how the sysctl-table stuff is implemented.
I distinctly remember that it couldn't be done with a flag due to that.

Christian
