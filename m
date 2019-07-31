Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id C17027DCA9
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 15:40:33 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6232910C8;
	Thu,  1 Aug 2019 13:39:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 750F84255
	for <bridge@lists.linux-foundation.org>;
	Wed, 31 Jul 2019 22:53:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2780A6CE
	for <bridge@lists.linux-foundation.org>;
	Wed, 31 Jul 2019 22:53:46 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id f5so23983113pgu.5
	for <bridge@lists.linux-foundation.org>;
	Wed, 31 Jul 2019 15:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=J5fdy7Wd9FHVlBYpOs7Z6b4FYMlCutBaVHd3ZTvQnx8=;
	b=jcvbyeO2Rb27mNd8+lNcStEOaoRfSBfIecOdeOrvehK1UDI3XXjVpnaSL1Y5VbgW0o
	S43AF7PCzFEJIzJb7T9OY8rvM6899WR8raNH7Q1x+ulDZXGVgvvBio39kalP+YHLuWWX
	9fFavIJ3A1Upf0jJXLMFN6P/tCRtAc+4DZDVsEm0eQ5TDR78H73gh/rbMhAEU6bfxNTg
	grHUKYAFHED5LCNQSvcLQTDqwBygF07HXRgwjJqDJRUw9xXVBvZsDBeKVGK/o94BfIb7
	ZkSAS3k+LQqjoxBxsKIk5YWLFT5xTrWE117kWcnAxP/Mah8wyBd32ATujwmACKDQoKh+
	8NZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=J5fdy7Wd9FHVlBYpOs7Z6b4FYMlCutBaVHd3ZTvQnx8=;
	b=YWPGrrwPwgxOYPEUCaf+37QIPlJSatw6jwDacr7HbbgxEyhj/jKSqd7crXG/EzLgZC
	xcEeSgVm4CoiCd4ShjMdzcO1f10j/oHP/1kwGj4toIWOXyeN/k/Uqxx4q+oGaHcZrkBG
	SVG+1Xw0ALBTaC2JZboKCfB4NeatTV/RqP6AtPpdIrM6TVUPZpn/PgN4lWkxrktDF3aD
	gVWO+rg48nkkisspItxAozyq8TcN9qg3Pqt/JVY23+uCDOqGSW0jOFoBiWmazB5eloD9
	40qmfMDn00mfEK6tsOgJAD6svDnxj+zCx2bLB+GJT1Sy6cnPL1g5e7xfLPb/zpoWxDYG
	J0uQ==
X-Gm-Message-State: APjAAAXsR//AwdkDL9cSuLUYnFK2lbI4MGYWzBDkwiv+Ca9IEJKGCpe+
	AK/eUY6sdB7WJi8o2VO9jEg=
X-Google-Smtp-Source: APXvYqw2iGgfavbMtasargiQy6HXHinRozneVKQp1jvdntL0M9Ibd5QpMWPBFGHiCtK48lDQdqdGFw==
X-Received: by 2002:a17:90a:9bca:: with SMTP id
	b10mr5142192pjw.90.1564613625545; 
	Wed, 31 Jul 2019 15:53:45 -0700 (PDT)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
	by smtp.gmail.com with ESMTPSA id
	h70sm64404924pgc.36.2019.07.31.15.53.45
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 31 Jul 2019 15:53:45 -0700 (PDT)
Date: Wed, 31 Jul 2019 15:53:38 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20190731155338.15ff34cb@hermes.lan>
In-Reply-To: <20190731224955.10908-1-nikolay@cumulusnetworks.com>
References: <319fda43-195d-2b92-7f62-7e273c084a29@cumulusnetworks.com>
	<20190731224955.10908-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, davem@davemloft.net,
	michael-dev <michael-dev@fami-braun.de>
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

  
> -int br_vlan_init(struct net_bridge *br)
> +static int br_vlan_init(struct net_bridge *br)
>  {
>  	struct net_bridge_vlan_group *vg;
>  	int ret = -ENOMEM;
> @@ -1083,6 +1085,8 @@ int br_vlan_init(struct net_bridge *br)
>  	return ret;
>  
>  err_vlan_add:
> +	RCU_INIT_POINTER(br->vlgrp, NULL);
> +	synchronize_rcu();

Calling sychronize_rcu is expensive. And the callback for
notifier is always called with rtnl_head. 

Why not just keep the pointer initialization back in the
code where bridge is created, it was safe there.
