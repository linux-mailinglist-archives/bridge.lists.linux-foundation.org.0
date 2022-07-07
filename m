Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7361156A512
	for <lists.bridge@lfdr.de>; Thu,  7 Jul 2022 16:08:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8007E419FB;
	Thu,  7 Jul 2022 14:08:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8007E419FB
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=t2gX55YR
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Gt9kQI4krOX; Thu,  7 Jul 2022 14:08:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 95870419FD;
	Thu,  7 Jul 2022 14:08:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95870419FD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2B7B6C007D;
	Thu,  7 Jul 2022 14:08:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8DC1BC002D
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jul 2022 14:08:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 632B783F5F
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jul 2022 14:08:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 632B783F5F
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=t2gX55YR
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ul-RtGlVR_0i for <bridge@lists.linux-foundation.org>;
 Thu,  7 Jul 2022 14:08:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7F7D83F5D
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E7F7D83F5D
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jul 2022 14:08:19 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id dn9so27353780ejc.7
 for <bridge@lists.linux-foundation.org>; Thu, 07 Jul 2022 07:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language
 :from:to:cc:references:in-reply-to:content-transfer-encoding;
 bh=6rY/dl2MwiNlzvD+cvp/Yehm/zk9+xvHGZcTY6Q3tHo=;
 b=t2gX55YR3zd30kvhnujoohIF5s3d5CO/xyZejpLQSF+S5o/KrNLttMvJGTX1oeAjn9
 vUCeZ3TJi/rcNK7qQ1Ct4cYa2MdcUQ5w3TAQWCzbegoVLC9jJUqhZsuk6UC9qRFYK0Jq
 4Pa/LZd9tsDU9Smmw84BbYJ60cIMADLrUl16WWi4ggOr+WMPbloLywj0iIASQzgtvL+W
 twSlbGH2fS+itudRcqd43RuWsrM5v+Zi/wuYlFYG7umyfM8/7pMf2mkdyeF2eMljZLjd
 3h+JBbNnjz573UvruSiquB6tfr6VgxiQdqKw/qQLBOn3YYt16vK+C8JF0HVcIuu7SsYb
 Tvuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:from:to:cc:references:in-reply-to
 :content-transfer-encoding;
 bh=6rY/dl2MwiNlzvD+cvp/Yehm/zk9+xvHGZcTY6Q3tHo=;
 b=NzHyP2FgWM+wgPVZKHad3dD+HUZVLzTUccm5YnMTh2y85VIsP7ZfTC8HkrCIHt/Jc3
 f45VaVlzJv/UEWVzbWHpe2PGaAvozRVNm/1eWxAo0Qp7MlaF8mU1uPX50c71avRFUn/a
 ZWtdWb5t4rN2T/m4xliY4r9ylk0sLJIJJcyOf4mRwkiAODRovJdmxTUoTAq+JX+UcPLK
 di4vG0UmL2E5Cems+5uLor5HUFNv5MRT2/GU6hrZJilriSCQJAG7DHTKM87938mNdoEB
 4DFhj/zfCBun8K5bDvex44TNLtYMSzfWsHAGZEllgmofJBdXWNSXa+A8MhELNZaUvxsu
 RQhw==
X-Gm-Message-State: AJIora9+zTBmyONpxqvofo1+DKu+KaGTk+JzZuYfKMyLCAJXWFGhbJoA
 t7gKyjFjfvwXxP5pEJupsBrnxA==
X-Google-Smtp-Source: AGRyM1vXnwj82Bxvke8sMoKXBGchoAelH3wU3m1m1FqidsNi8nJ6cJffAXN/13LDMJAzzvjAwflz7w==
X-Received: by 2002:a17:906:a3ca:b0:726:2bd2:87bc with SMTP id
 ca10-20020a170906a3ca00b007262bd287bcmr44834471ejb.226.1657202898091; 
 Thu, 07 Jul 2022 07:08:18 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 d11-20020a170906304b00b0072abb95c9f4sm6590052ejd.193.2022.07.07.07.08.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Jul 2022 07:08:17 -0700 (PDT)
Message-ID: <37d59561-6ce8-6c5f-5d31-5c37a0a3d231@blackwall.org>
Date: Thu, 7 Jul 2022 17:08:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
To: Vladimir Oltean <olteanv@gmail.com>
References: <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
 <01e6e35c-f5c9-9776-1263-058f84014ed9@blackwall.org>
 <86zgj6oqa9.fsf@gmail.com>
 <b78fb006-04c4-5a25-7ba5-94428cc9591a@blackwall.org>
 <86fskyggdo.fsf@gmail.com>
 <040a1551-2a9f-18d0-9987-f196bb429c1b@blackwall.org>
 <86v8tu7za3.fsf@gmail.com>
 <4bf1c80d-0f18-f444-3005-59a45797bcfd@blackwall.org>
 <20220706181316.r5l5rzjysxow2j7l@skbuf>
 <7cf30a3e-a562-d582-4391-072a2c98ab05@blackwall.org>
 <20220706202130.ehzxnnqnduaq3rmt@skbuf>
 <fe456fb0-4f68-f93e-d4a9-66e3bc56d547@blackwall.org>
In-Reply-To: <fe456fb0-4f68-f93e-d4a9-66e3bc56d547@blackwall.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Hans Schultz <schultz.hans@gmail.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH V3 net-next 1/4] net: bridge: add fdb flag to
 extent locked port feature
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

On 07/07/2022 00:01, Nikolay Aleksandrov wrote:
> On 06/07/2022 23:21, Vladimir Oltean wrote:
>> On Wed, Jul 06, 2022 at 10:38:04PM +0300, Nikolay Aleksandrov wrote:
[snip]
> I already said it's ok to add hard configurable limits if they're done properly performance-wise.
> Any distribution can choose to set some default limits after the option exists.
> 

Just fyi, and to avoid duplicate efforts, I already have patches for global and per-port software
fdb limits that I'll polish and submit soon (depending on time availability, of course). If I find
more time I might add per-vlan limits as well to the set. They use embedded netlink attributes
to config and dump, so we can easily extend them later (e.g. different action on limit hit, limit
statistics etc).

