Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C2F71F0B4
	for <lists.bridge@lfdr.de>; Thu,  1 Jun 2023 19:25:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BDFE613D9;
	Thu,  1 Jun 2023 17:25:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3BDFE613D9
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=BIQzhqi2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aMIAPfuyRQed; Thu,  1 Jun 2023 17:25:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 9DE906154B;
	Thu,  1 Jun 2023 17:25:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9DE906154B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 71292C0087;
	Thu,  1 Jun 2023 17:25:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EA2BCC0029
 for <bridge@lists.linux-foundation.org>; Thu,  1 Jun 2023 17:25:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CC74684304
 for <bridge@lists.linux-foundation.org>; Thu,  1 Jun 2023 17:25:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC74684304
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=BIQzhqi2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BcSfPzTLbF90 for <bridge@lists.linux-foundation.org>;
 Thu,  1 Jun 2023 17:25:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06D4C84303
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 06D4C84303
 for <bridge@lists.linux-foundation.org>; Thu,  1 Jun 2023 17:25:33 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id
 a640c23a62f3a-96f7bf29550so156024066b.3
 for <bridge@lists.linux-foundation.org>; Thu, 01 Jun 2023 10:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1685640332; x=1688232332;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=zQsLOYw2qsyNq/n+5eOaAgo493QBN57EdOSrWMISRRE=;
 b=BIQzhqi2lFWKFCf8MCcXrdp6Ls+Xl+DSWyM1IbjQ05PzaMPk/+jZkx5JcdIMPBey7X
 6RiIiOmJfpU4vrjY8cUSm0+w4+o2BpfgKd6UZQPXxV84xd9M08PoMmQ1rttHclUHy72D
 9VnfHl6hE5+U/3wiqmdyrHjmPXRdawFJgNXsVb5Hv0OhN5Ysg8gubJkg5H4mNJnDzc15
 CSoooUjd/9BOPZoPKmqAEbCso0kpZU++EKlCoNJXpALsPvbFep8y4BSmUycAH9qekLlq
 KwEjwUQ17zRtZV5OSjjIxq/T3nwTg49ZEupTLcEEozamE+83GlC+19pUnN2dZS0NvPn4
 +Mvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685640332; x=1688232332;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zQsLOYw2qsyNq/n+5eOaAgo493QBN57EdOSrWMISRRE=;
 b=e7BxyNUjVzTWZoAZ8EQC2CBXUolm4O3B5noVkGs4ySqf2a4u+sTNQXW+cfKDhnV5bA
 enOPtTLxHYUmmC3RPjWfherhtQt458NYjoa+mc6ibmRO/sWf4i3IWKxsb0C/D3MVWrtG
 BpYxU5vTyGLGPD87j5pBORih2l6u/njhV4jE6qwlE7mMLyj2O76te5QjWDuVr3IVZdTt
 Z364U7I2gfJYBW02rjV+iLJAnJC3XKwbiKRTxuMscn+dzPg2FQgdnkclxxQ8bWEziAU5
 f/DbEYjZJ7SIzaTTBijvQARHY+6jmMin/iw3FpsBHjhg3myvUBqOc01oXMdbCWqO51uR
 NdOA==
X-Gm-Message-State: AC+VfDzAU0aq8jNQTFoRmJnXienT8+gpw9tSK++U28UMmMPp+mGMxZie
 dV6LexsTrM1Hg5+JaiRh+pSoGA==
X-Google-Smtp-Source: ACHHUZ7pGo4YjGEvhSHHfN7mvAAlE9HTJ3y3u33chg2VLuCOcgk3TgJL3g+ohWpyZKJhnXfPquHkOw==
X-Received: by 2002:a17:907:8687:b0:973:ca9c:3e2b with SMTP id
 qa7-20020a170907868700b00973ca9c3e2bmr9251985ejc.25.1685640331865; 
 Thu, 01 Jun 2023 10:25:31 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 h26-20020a1709063b5a00b00968242f8c37sm10634044ejf.50.2023.06.01.10.25.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 01 Jun 2023 10:25:31 -0700 (PDT)
Message-ID: <258b291e-4631-bb49-58e8-0dc5bf30ed3e@blackwall.org>
Date: Thu, 1 Jun 2023 20:25:30 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Stephen Hemminger <stephen@networkplumber.org>, netdev@vger.kernel.org
References: <20230601172145.51357-1-stephen@networkplumber.org>
 <20230601172145.51357-4-stephen@networkplumber.org>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230601172145.51357-4-stephen@networkplumber.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH iproute2 3/7] bridge: make print_vlan_info
	static
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On 01/06/2023 20:21, Stephen Hemminger wrote:
> Function defined and used in only one file.
> 
> Signed-off-by: Stephen Hemminger <stephen@networkplumber.org>
> ---
>  bridge/br_common.h | 1 -
>  bridge/vlan.c      | 3 ++-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/bridge/br_common.h b/bridge/br_common.h
> index 1bdee65844c1..704e76b0acb2 100644
> --- a/bridge/br_common.h
> +++ b/bridge/br_common.h
> @@ -6,7 +6,6 @@
>  #define MDB_RTR_RTA(r) \
>  		((struct rtattr *)(((char *)(r)) + RTA_ALIGN(sizeof(__u32))))
>  
> -void print_vlan_info(struct rtattr *tb, int ifindex);
>  int print_linkinfo(struct nlmsghdr *n, void *arg);
>  int print_mdb_mon(struct nlmsghdr *n, void *arg);
>  int print_fdb(struct nlmsghdr *n, void *arg);
> diff --git a/bridge/vlan.c b/bridge/vlan.c
> index 5b304ea94224..dfc62f83a5df 100644
> --- a/bridge/vlan.c
> +++ b/bridge/vlan.c
> @@ -18,6 +18,7 @@
>  
>  static unsigned int filter_index, filter_vlan;
>  static int vlan_rtm_cur_ifidx = -1;
> +static void print_vlan_info(struct rtattr *tb, int ifindex);
>  
>  enum vlan_show_subject {
>  	VLAN_SHOW_VLAN,
> @@ -1309,7 +1310,7 @@ static int vlan_global_show(int argc, char **argv)
>  	return 0;
>  }
>  
> -void print_vlan_info(struct rtattr *tb, int ifindex)
> +static void print_vlan_info(struct rtattr *tb, int ifindex)
>  {
>  	struct rtattr *i, *list = tb;
>  	int rem = RTA_PAYLOAD(list);

Thanks,
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

