Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 268427E73B
	for <lists.bridge@lfdr.de>; Fri,  2 Aug 2019 02:39:03 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D7BE017E2;
	Fri,  2 Aug 2019 00:38:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8284BB49
	for <bridge@lists.linux-foundation.org>;
	Fri,  2 Aug 2019 00:38:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
	[209.85.167.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2FAC1E7
	for <bridge@lists.linux-foundation.org>;
	Fri,  2 Aug 2019 00:38:48 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id x3so51737765lfc.0
	for <bridge@lists.linux-foundation.org>;
	Thu, 01 Aug 2019 17:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=ddWKWrMPlRNzwUi7tu7acZVyIb6Fxbj7c6u3GdNlWxE=;
	b=OLiggddbzvXTeseZwRY2+R6otVkSDJAL05kqzZgTh5b+cj2XJaGCR3aV4A5CQIoKjR
	vp2otVeNe1jU8hkv96zPFFRMgHDsQj89q2rRlNeO21kJq8qP0MRRtxe0x3WICji3qRor
	wiR9zjhlTM65YAkyGWWWHhqVa20I1SjLW+PRI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=ddWKWrMPlRNzwUi7tu7acZVyIb6Fxbj7c6u3GdNlWxE=;
	b=HvJCGBZW58BquyjqnDO9ouzbx+qQROIF+rhf3FvJQ+WJwA7DXmRiXP+Vy9BWn4k7Lh
	Jwm1y499JtRg16rCgxDzJ0ve7UxcGt8dEF4wj3NfRGOv59kJhpSoQXbJ21UrCsAiXOSK
	CxY7f6vk3FuRhtWLBLGmhokrCPWsrC1/xxyBTcyMuurXAMMJm60TzjZ+UodFDH/8AUwq
	K9vF3mJx/HE37Cdou2qZAy6tzteORg8lLvvMo8n3EHKHCUS5moyfearD5OwJrtk77F1l
	bx7N3DQFs4jVhEeHszMU16/qvtHveJTpoE2DFVyH/Sx2E5J/Wjb4pDUiz/pq+9PPItih
	t13g==
X-Gm-Message-State: APjAAAUYt+EkzJu7BJbzCc5G/Ci4XoS4mqB4ni19EQEn/I7Z7XwuL6XS
	oNBpUr+LC6IwsJvLU6CDGdhimg==
X-Google-Smtp-Source: APXvYqzu57U/1pIkywnl5MVoRCjWzHY3v4I+7PFfrMuU4kDGXcEGq4pCsJwLL/zBZO57FhESAw2ovg==
X-Received: by 2002:ac2:5336:: with SMTP id f22mr60765223lfh.180.1564706326453;
	Thu, 01 Aug 2019 17:38:46 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.googlemail.com with ESMTPSA id
	u24sm172703lfc.35.2019.08.01.17.38.45
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Aug 2019 17:38:45 -0700 (PDT)
To: netdev@vger.kernel.org
References: <319fda43-195d-2b92-7f62-7e273c084a29@cumulusnetworks.com>
	<20190731224955.10908-1-nikolay@cumulusnetworks.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <0a015a21-c1ae-e275-e675-431f08bece86@cumulusnetworks.com>
Date: Fri, 2 Aug 2019 03:38:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190731224955.10908-1-nikolay@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	davem@davemloft.net, michael-dev <michael-dev@fami-braun.de>
Subject: Re: [Bridge] [PATCH net v3] net: bridge: move vlan init/deinit to
 NETDEV_REGISTER/UNREGISTER
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

On 8/1/19 1:49 AM, Nikolay Aleksandrov wrote:
[snip]
> [0] https://bugzilla.kernel.org/show_bug.cgi?id=204389
> 
> Reported-by: michael-dev <michael-dev@fami-braun.de>
> Fixes: 5be5a2df40f0 ("bridge: Add filtering support for default_pvid")
> Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> ---
> I tried a few different approaches to resolve this but they were all
> unsuitable for some kernels, this approach can go to stables easily
> and IMO is the way this had to be done from the start. Alternatively
> we could move only the br_vlan_add and pair it with a br_vlan_del of
> default_pvid on the same events, but I don't think it hurts to move
> the whole init/deinit there as it'd help older stable releases as well.
> 
> I also tested the br_vlan_init error handling after the move by always
> returning errors from all over it. Since errors at NETDEV_REGISTER cause
> NETDEV_UNREGISTER we can deinit vlans properly for all cases regardless
> why it happened (e.g. device destruction or init error).
> 
>  net/bridge/br.c         |  5 ++++-
>  net/bridge/br_device.c  | 10 ----------
>  net/bridge/br_private.h | 20 +++++---------------
>  net/bridge/br_vlan.c    | 25 ++++++++++++++++++-------
>  4 files changed, 27 insertions(+), 33 deletions(-)
> 

Self-NAK, after thinking more about how to best handle this and running more
tests I believe it'll be better to go with the alternative I suggested above -
to move out only the default pvid add out of br_vlan_init to NETDEV_REGSITER
and pair it with br_vlan_delete in NETDEV_UNREGISTER. That way we'll split
the init/deinit in 2 steps, but we'll keep the current order and will reduce
the churn for this fix, functionally it should be equivalent as that is the
problematic part of the init which has to be done after the netdev has been
registered.

I'll spin v4 tomorrow after running more tests with it.

