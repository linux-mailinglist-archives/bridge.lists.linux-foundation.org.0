Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B37E85618E2
	for <lists.bridge@lfdr.de>; Thu, 30 Jun 2022 13:17:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2FDA813DD;
	Thu, 30 Jun 2022 11:17:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B2FDA813DD
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=f2mg5NQc
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vy0JgJSC_z4M; Thu, 30 Jun 2022 11:17:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id CDEA281416;
	Thu, 30 Jun 2022 11:17:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDEA281416
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6803BC0036;
	Thu, 30 Jun 2022 11:17:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1F0C2C0011
 for <bridge@lists.linux-foundation.org>; Thu, 30 Jun 2022 11:17:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E08AC60EFF
 for <bridge@lists.linux-foundation.org>; Thu, 30 Jun 2022 11:17:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E08AC60EFF
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=f2mg5NQc
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4J5K6VFKP5hd for <bridge@lists.linux-foundation.org>;
 Thu, 30 Jun 2022 11:17:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DBC3D60A90
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DBC3D60A90
 for <bridge@lists.linux-foundation.org>; Thu, 30 Jun 2022 11:17:47 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id d2so26605142ejy.1
 for <bridge@lists.linux-foundation.org>; Thu, 30 Jun 2022 04:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=xOuD0VayMLaVqMSm3qQEckL7M1TiFwHS72WWPKTLO58=;
 b=f2mg5NQcZInRzApmj3Hn1BwfNl1pudDvuPud+y6bW5QTphTs0bXap0Uu2pOmCLjt67
 13Xcr7cbtXO40QwP5BGR3/Lv14ByQi77QfcKQJTj7qwsgFHLYMfioS2b8xPcxClm0exN
 02p3T+AEeSkzysS7nxVSBskiMedr+oMz8YB+IB49n+wlv6Xw5o6bFyjETvnBcjFtmfNy
 WBv6ktj6+xlzz9y7+owgEUGG2ApUAOwv60wCPv8UVM8+o1cA2RPMvOR2txdT2PzZAaWo
 ijfpniC2e0HaioZ1VUHPbiJEFo37djO+X7EQpbklN41PWDjuWEwEMCoqLhxfyPvQhrkc
 8SRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=xOuD0VayMLaVqMSm3qQEckL7M1TiFwHS72WWPKTLO58=;
 b=RDNQE4FU6txooh7WUcQOhsaNPPn573JL/ptb4UGU5VDsu57WnsQRcne+6BRDwEdojY
 VfbtPazOYh5W0wYIAobmyS4hbtrEBaQuRVdz9kBvMSOI0J6aN2jMU0G6NwYMAU0uqu6I
 ZpsK2Dkly05RJAPlDrjmKG1LvMXTBfitiFOMvUC4ifrU7ItouR1F6NJS/0Ey+yxMyhwL
 EQdbfCQ03Y11DmTevjC+OxuCGYZ7RTu5UABBS9l9pYu1gnfx9yMkOs5XqzclO9qiW//K
 HsAWpJU/nWOHHG3LZTc1qViA9Pu4N+/G1c+EcPIeMxMJ1ya0jpOdYc25MrcseCAXuZ0q
 7g1g==
X-Gm-Message-State: AJIora/TfHDkryHxkw+9GTKpOLlPYuw8NF0wwlqnCvjAfBfzfonUc5TE
 jCl3HHZWzJ4/s5VoTpQksgaPYQ==
X-Google-Smtp-Source: AGRyM1sTwlP8l8cSXnZAeirtFdsJCaUPo0dMEU/k0FpVqeYgtZw9UTyY9WN6rJ5Nib2hOc5JVBVPWQ==
X-Received: by 2002:a17:906:149b:b0:726:2968:e32a with SMTP id
 x27-20020a170906149b00b007262968e32amr8420709ejc.71.1656587866001; 
 Thu, 30 Jun 2022 04:17:46 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 pv1-20020a170907208100b00726abf9cd8esm4697467ejb.125.2022.06.30.04.17.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Jun 2022 04:17:45 -0700 (PDT)
Message-ID: <80d971ea-88b9-0d21-b6f4-93124ba6a678@blackwall.org>
Date: Thu, 30 Jun 2022 14:17:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Hans Schultz <hans@kapio-technology.com>, davem@davemloft.net,
 kuba@kernel.org
References: <20220630111634.610320-1-hans@kapio-technology.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220630111634.610320-1-hans@kapio-technology.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 Hans Schultz <schultz.hans+netdev@gmail.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH net-next v1 1/1] net: bridge: ensure that
 link-local traffic cannot unlock a locked port
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

On 30/06/2022 14:16, Hans Schultz wrote:
> This patch is related to the patch set
> "Add support for locked bridge ports (for 802.1X)"
> Link: https://lore.kernel.org/netdev/20220223101650.1212814-1-schultz.hans+netdev@gmail.com/
> 
> This patch makes the locked port feature work with learning turned on,
> which is enabled with the command:
> 
> bridge link set dev DEV learning on
> 
> Without this patch, link local traffic (01:80:c2) like EAPOL packets will
> create a fdb entry when ingressing on a locked port with learning turned
> on, thus unintentionally opening up the port for traffic for the said MAC.
> 
> Some switchcore features like Mac-Auth and refreshing of FDB entries,
> require learning enables on some switchcores, f.ex. the mv88e6xxx family.
> Other features may apply too.
> 
> Since many switchcores trap or mirror various multicast packets to the
> CPU, link local traffic will unintentionally unlock the port for the
> SA mac in question unless prevented by this patch.
> 
> Signed-off-by: Hans Schultz <hans@kapio-technology.com>
> ---
>  net/bridge/br_input.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> index 68b3e850bcb9..a3ce0a151817 100644
> --- a/net/bridge/br_input.c
> +++ b/net/bridge/br_input.c
> @@ -215,6 +215,7 @@ static void __br_handle_local_finish(struct sk_buff *skb)
>  	if ((p->flags & BR_LEARNING) &&
>  	    nbp_state_should_learn(p) &&
>  	    !br_opt_get(p->br, BROPT_NO_LL_LEARN) &&
> +	    !(p->flags & BR_PORT_LOCKED) &&
>  	    br_should_learn(p, skb, &vid))
>  		br_fdb_update(p->br, p, eth_hdr(skb)->h_source, vid, 0);
>  }

LGTM, thanks!
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
