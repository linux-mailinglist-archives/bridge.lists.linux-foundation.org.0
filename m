Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id C50669A29F
	for <lists.bridge@lfdr.de>; Fri, 23 Aug 2019 00:10:05 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 26DA0E67;
	Thu, 22 Aug 2019 22:09:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 94103E38
	for <bridge@lists.linux-foundation.org>;
	Thu, 22 Aug 2019 22:09:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EF53E822
	for <bridge@lists.linux-foundation.org>;
	Thu, 22 Aug 2019 22:09:53 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id z11so6811395wrt.4
	for <bridge@lists.linux-foundation.org>;
	Thu, 22 Aug 2019 15:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=M+oIdnD3jm/q0FEoEMnIGzoD27Ik3dMH4NYQUO8iSBo=;
	b=ZI42VLIf3XR0ok5i+0x5WISOnHyGwIZxT87RAf5JOkT72TxGxOM5SLOZYlrOMK2Lz0
	/pMXLKJ9Bp6o+JdDPyTNehpyrMiXLKq/THe45t1S8Y9iG0NX2rg/tiUPjo6oBHCdZUgS
	H9MYSXYdU+sMDcOmye0Qxn0PQG2F3X8yS+ekQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=M+oIdnD3jm/q0FEoEMnIGzoD27Ik3dMH4NYQUO8iSBo=;
	b=YjOjvxnlNVaN4zsnCc4lN5+mlvexRsUA2ZSf2H6KfekwGj3RJowF+HGmeR4Hm4bwgC
	S/2K78PkvmdzsMkFITa+5x1geCRnqL4Ek6lAgcMn0+8xqVf3XxNbP48Y/kquQzO6nD8x
	NNfju3u8hhwfyy3U3Pq6o3FQlz/GobLf6UsUwwlMo2Gvdh5wIn1tLiVkoV8sJQ/5Wqaf
	GLq7vOmFVKzjGX4JfvPcHcZHVteikT5aJy/kYE5jPBkZL/a7p59LBViIFrJUAA5LJW9D
	KZhRcDg1Jn+JJ7Gm44Jno3PlH/8DDyxqcYTUDNsrBiVMOtN7LziWKCpNVXljwXn8tvJg
	yI2g==
X-Gm-Message-State: APjAAAW5FaJs9ha97oZLqFhHd0neir2t2h2oQIPQktQmceAeJEWtJnjQ
	GXND4txwaOiSLtzfA6ACdcWrL5nFHlkBlg==
X-Google-Smtp-Source: APXvYqwhFYLuDgxoml+DLuSpfZTqsK4iafwdRNx6hqMwddGuTcDHWBVBaZxAq1227fwR/ulvrWIyEw==
X-Received: by 2002:adf:e504:: with SMTP id j4mr1064839wrm.222.1566511792353; 
	Thu, 22 Aug 2019 15:09:52 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id c11sm590230wrs.86.2019.08.22.15.09.51
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Aug 2019 15:09:51 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
	davem@davemloft.net, UNGLinuxDriver@microchip.com,
	alexandre.belloni@bootlin.com, allan.nielsen@microchip.com,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	bridge@lists.linux-foundation.org
References: <1566500850-6247-1-git-send-email-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <1e16da88-08c5-abd5-0a3e-b8e6c3db134a@cumulusnetworks.com>
Date: Fri, 23 Aug 2019 01:09:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1566500850-6247-1-git-send-email-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: Re: [Bridge] [PATCH 0/3] Add NETIF_F_HW_BRIDGE feature
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

On 22/08/2019 22:07, Horatiu Vultur wrote:
> Current implementation of the SW bridge is setting the interfaces in
> promisc mode when they are added to bridge if learning of the frames is
> enabled.
> In case of Ocelot which has HW capabilities to switch frames, it is not
> needed to set the ports in promisc mode because the HW already capable of
> doing that. Therefore add NETIF_F_HW_BRIDGE feature to indicate that the
> HW has bridge capabilities. Therefore the SW bridge doesn't need to set
> the ports in promisc mode to do the switching.
> This optimization takes places only if all the interfaces that are part
> of the bridge have this flag and have the same network driver.
> 
> If the bridge interfaces is added in promisc mode then also the ports part
> of the bridge are set in promisc mode.
> 
> Horatiu Vultur (3):
>   net: Add HW_BRIDGE offload feature
>   net: mscc: Use NETIF_F_HW_BRIDGE
>   net: mscc: Implement promisc mode.
> 
>  drivers/net/ethernet/mscc/ocelot.c | 26 ++++++++++++++++++++++++--
>  include/linux/netdev_features.h    |  3 +++
>  net/bridge/br_if.c                 | 29 ++++++++++++++++++++++++++++-
>  net/core/ethtool.c                 |  1 +
>  4 files changed, 56 insertions(+), 3 deletions(-)
> 

IMO the name is misleading.
Why do the devices have to be from the same driver ? This is too specific targeting some
devices. The bridge should not care what's the port device, it should be the other way
around, so adding device-specific code to the bridge is not ok. Isn't there a solution
where you can use NETDEV_JOIN and handle it all from your driver ?
Would all HW-learned entries be hidden from user-space in this case ?



