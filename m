Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 849173BDD2
	for <lists.bridge@lfdr.de>; Mon, 10 Jun 2019 22:52:01 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7F6D8E51;
	Mon, 10 Jun 2019 20:51:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C15FBE17
	for <bridge@lists.linux-foundation.org>;
	Mon, 10 Jun 2019 20:51:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
	[209.85.208.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 83A3476F
	for <bridge@lists.linux-foundation.org>;
	Mon, 10 Jun 2019 20:51:40 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id h9so16452953edr.0
	for <bridge@lists.linux-foundation.org>;
	Mon, 10 Jun 2019 13:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=LwPRrFIFVpFh7windfuH8fQym2aENAjRfJxjWELiSBU=;
	b=Zb5w8rP85WrEmAp+Zr/D+9qTV1RoeJ9+bGxf6ZGFaz//eje5o8iDyuC629FdHNoZHM
	M6NOkiKW5X94YWAH/0ShGapQoZma0hlhSk6PpQEgi915CF1Dv1mhkO/conE2CVt3RObX
	ksdmzpJiEaaT8Yjo9vuQP3/LNVzAO7x6LBf7L7PR+g89d/pcyU9i67wPGHBkQEiC2ISG
	qdF9toeA0vtNzb1Fd88YeDnqmdHXoZrEQoob4+rUi/sJyLbrlfMfj4RPQBeM7Zhz4UQr
	Rps++y3zxLadol/OIc8Cv+L+LUVb9gstJIM2XJOSfG/oNJXv+6ypGOgTjXRr43Utd7px
	oGWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=LwPRrFIFVpFh7windfuH8fQym2aENAjRfJxjWELiSBU=;
	b=Low5jfa+Dl9hISYbA3UiNBvwWKNn106n5niDjs+UTcIC4yGV++s9XGKyRSnuK3s/z1
	CRjGOQ1Qqw3Te3o+UGAQZ/gH6QAIgsTQGt3srvRpl1XGGoSYpiXBANwfzcRBe2QliLBT
	YewLOwUkw38GLQp2iCT0/+/B/HKB2MSiiLal4lKUTkXlMGumBGNOwQp6WOFyH9xCVgIV
	Yxpwgx/ugC3AcEIlKPr1TUJemrNM6ha7KQVDGXueIeCvznZaoogenWo/8868Ukkmn4/Q
	feDsPv6puTJLqWF6selKtavG3Cr4N02h6I4mONw6gPHjEunUFXNBL7njgW1c2ZuXPxW+
	iTpw==
X-Gm-Message-State: APjAAAUo1zBdNnMTENP5NxfJv6ZsvolRFaMu++rPNYwpkjjU3HJ0Hnso
	/iPg2Kj9Ly5O3ebUgSZ1bcUpog==
X-Google-Smtp-Source: APXvYqwi/4K4O7p3F5fWVp5YvhiOxBsgwx+PVV7Ojw/tfOBJ/2puw1O0OPD6xnMpmS+Mb4sPcC1x7Q==
X-Received: by 2002:a17:906:d7aa:: with SMTP id
	pk10mr1184294ejb.125.1560199899038; 
	Mon, 10 Jun 2019 13:51:39 -0700 (PDT)
Received: from brauner.io ([2a02:8109:9cc0:6dac:cd8f:f6e9:1b84:bbb1])
	by smtp.gmail.com with ESMTPSA id k9sm1976063eja.72.2019.06.10.13.51.37
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 10 Jun 2019 13:51:38 -0700 (PDT)
Date: Mon, 10 Jun 2019 22:51:36 +0200
From: Christian Brauner <christian@brauner.io>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Message-ID: <20190610205134.6wqparmtsdzbiutv@brauner.io>
References: <20190609162304.3388-1-christian@brauner.io>
	<20190609162304.3388-2-christian@brauner.io>
	<20190610174136.p3fbcbn33en5bb7f@salvia>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190610174136.p3fbcbn33en5bb7f@salvia>
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
	smbarber@chromium.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v1 1/1] br_netfilter: namespace bridge
 netfilter sysctls
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

On Mon, Jun 10, 2019 at 07:41:36PM +0200, Pablo Neira Ayuso wrote:
> Thanks for updating this patch to use struct brnf_net.
> 
> A few comments below.
> 
> On Sun, Jun 09, 2019 at 06:23:04PM +0200, Christian Brauner wrote:
> [...]
> > diff --git a/include/net/netfilter/br_netfilter.h b/include/net/netfilter/br_netfilter.h
> > index 89808ce293c4..302fcd3aade2 100644
> > --- a/include/net/netfilter/br_netfilter.h
> > +++ b/include/net/netfilter/br_netfilter.h
> > @@ -85,17 +82,42 @@ static inline __be16 vlan_proto(const struct sk_buff *skb)
> >  		return 0;
> >  }
> >  
> > -#define IS_VLAN_IP(skb) \
> > -	(vlan_proto(skb) == htons(ETH_P_IP) && \
> > -	 brnf_filter_vlan_tagged)
> > +static inline bool is_vlan_ip(const struct sk_buff *skb, const struct net *net)
> > +{
> 
> I like this conversion from macro to static inline a lot.
> 
> But if you let me ask for one more change, would you split this in two
> patches? One to replace #defines by static inline.

Sure.
