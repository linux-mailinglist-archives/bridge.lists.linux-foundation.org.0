Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 9874AA69FC
	for <lists.bridge@lfdr.de>; Tue,  3 Sep 2019 15:36:51 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 05EB4DA5;
	Tue,  3 Sep 2019 13:36:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5A244D90
	for <bridge@lists.linux-foundation.org>;
	Tue,  3 Sep 2019 13:36:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B8C87756
	for <bridge@lists.linux-foundation.org>;
	Tue,  3 Sep 2019 13:36:39 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id l11so8709348wrx.5
	for <bridge@lists.linux-foundation.org>;
	Tue, 03 Sep 2019 06:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=sender:date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=XXWSbLsKaHg5I5JkLpivESPwDR8ogw0XgJNZimWH3ok=;
	b=Teo2ZSWsXJgYtI6aGJ8QIQR+ijFjruZMSiEKuPtDDv0rMWQA0JmLG8nCCISOKQnYOy
	NetFt3DFd8uyAB6021HDj4DFccgfSM4sBbIlxeI1rKOwg3QzraEgEh+ThJcOSdrv5d55
	uExIHOud/g8s4F0JPk7gKA21BRQPPzEtOtip2/XRe+lhkE11tZ4PWNIMOWN5QJZqWTtK
	Fdb1GR/CCAVhWDIN7dqtnJ8cf1VY4BVaHTBaPKv3H8hPnsdvKauzoulc4sl9lfsh9RoR
	ZfIpNv+vVinopMauyptxX2ecDAnDzLuhRMkyoBI06LnO1RCjRYVURbwuBH0N63JG858w
	Z6xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
	:references:mime-version:content-disposition:in-reply-to:user-agent;
	bh=XXWSbLsKaHg5I5JkLpivESPwDR8ogw0XgJNZimWH3ok=;
	b=HSnqljjMF4R7cheJNfd8uohMaLE7xwOM2BnKkvaTja3734Cx9v4ZasqgQOgSZSNpfl
	zNxMFbMr30HIbBKOA7Ia6nVQrfpW6tVUVDfc7uZN90AMLe1cflr3JxnvneN/LXkjd2PJ
	TLHH6G+UMNRHuZSjLlUN6pEttipwp6AEVc8nlMbqWPFJNUtH4HkBYDZr8bdw3rKWWkdy
	UQTiWHFkdu4RT9MCUbsxDNAr3GT5ebyxYMkFEwAeuJNDobGneKyTO5NYOh5YiUirBLVt
	8fJQhWm1kGEQ/wuXqWQqo9uNvqf0AnMQZYdH9Z9ERqXLeP+JIPY7C6sce4f5v8whLnjF
	ka5w==
X-Gm-Message-State: APjAAAVzEIhGcDWUp1hYYsWh2dp7oO8W++TZ9qQjgZdxJswTkNpt7A2k
	JW2pjMHb1wGLdp2pEh4lS/I=
X-Google-Smtp-Source: APXvYqz4KjqpS358nHrAmtKP8SWA3RqP5GCb/rip3hF2qCoodxn/l/koaslM3TPkpsB28aXEdVBDig==
X-Received: by 2002:a5d:4402:: with SMTP id z2mr10102991wrq.183.1567517798269; 
	Tue, 03 Sep 2019 06:36:38 -0700 (PDT)
Received: from tycho (ipbcc09208.dynamic.kabel-deutschland.de. [188.192.146.8])
	by smtp.gmail.com with ESMTPSA id
	f143sm11102046wme.40.2019.09.03.06.36.37
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 03 Sep 2019 06:36:37 -0700 (PDT)
Date: Tue, 3 Sep 2019 15:36:36 +0200
From: Zahari Doychev <zahari.doychev@linux.com>
To: Toshiaki Makita <toshiaki.makita1@gmail.com>
Message-ID: <20190903133635.siw6xcaqwk7m5a5a@tycho>
References: <20190902181000.25638-1-zahari.doychev@linux.com>
	<76b7723b-68dd-0efc-9a93-0597e9d9b827@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <76b7723b-68dd-0efc-9a93-0597e9d9b827@gmail.com>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org, jiri@resnulli.us,
	nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
	roopa@cumulusnetworks.com, makita.toshiaki@lab.ntt.co.jp,
	jhs@mojatatu.com, alexei.starovoitov@gmail.com,
	simon.horman@netronome.com, xiyou.wangcong@gmail.com,
	johannes@sipsolutions.net, dsahern@gmail.com
Subject: Re: [Bridge] [PATCH v3 1/2] net: bridge: use mac_len in bridge
 forwarding
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

On Tue, Sep 03, 2019 at 08:37:36PM +0900, Toshiaki Makita wrote:
> Hi Zahari,
> 
> Sorry for reviewing this late.
> 
> On 2019/09/03 3:09, Zahari Doychev wrote:
> ...
> > @@ -466,13 +466,14 @@ static bool __allowed_ingress(const struct net_bridge *br,
> >   		/* Tagged frame */
> >   		if (skb->vlan_proto != br->vlan_proto) {
> >   			/* Protocol-mismatch, empty out vlan_tci for new tag */
> > -			skb_push(skb, ETH_HLEN);
> > +			skb_push(skb, skb->mac_len);
> >   			skb = vlan_insert_tag_set_proto(skb, skb->vlan_proto,
> >   							skb_vlan_tag_get(skb));
> 
> I think we should insert vlan at skb->data, i.e. mac_header + mac_len, while this
> function inserts the tag at mac_header + ETH_HLEN which is not always the correct
> offset.

Maybe I am misunderstanding the concern here but this should make sure that
the VLAN tag from the skb is move back in the payload as the outer most tag.
So it should follow the ethernet header. It looks like this e.g.,:

VLAN1 in skb:
+------+------+-------+
| DMAC | SMAC | ETYPE |
+------+------+-------+

VLAN1 moved to payload:
+------+------+-------+-------+
| DMAC | SMAC | VLAN1 | ETYPE |
+------+------+-------+-------+

VLAN2 in skb:
+------+------+-------+-------+
| DMAC | SMAC | VLAN1 | ETYPE |
+------+------+-------+-------+

VLAN2 moved to payload:

+------+------+-------+-------+
| DMAC | SMAC | VLAN2 | VLAN1 | ....
+------+------+-------+-------+

Doing the skb push with mac_len makes sure that VLAN tag is inserted in the
correct offset. For mac_len == ETH_HLEN this does not change the current
behaviour.

> 
> >   			if (unlikely(!skb))
> >   				return false;
> >   			skb_pull(skb, ETH_HLEN);
> 
> Now skb->data is mac_header + ETH_HLEN which would be broken when mac_len is not
> ETH_HLEN?

I thought it would be better to point in this case to the outer tag as otherwise
if mac_len is used the skb->data will point to the next tag which I find somehow
inconsistent or do you see some case where this can cause problems?


> 
> > +			skb_reset_network_header(skb);
> >   			skb_reset_mac_len(skb);
> >   			*vid = 0;
> >   			tagged = false;
> > 
> 
> Toshiaki Makita
