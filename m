Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7BC67DFF9
	for <lists.bridge@lfdr.de>; Fri, 27 Jan 2023 10:22:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A16616122E;
	Fri, 27 Jan 2023 09:22:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A16616122E
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=XOWnbPeH
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TwovNI5fARuk; Fri, 27 Jan 2023 09:22:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 476F260BF7;
	Fri, 27 Jan 2023 09:22:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 476F260BF7
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E0840C007C;
	Fri, 27 Jan 2023 09:22:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A7A80C002D
 for <bridge@lists.linux-foundation.org>; Fri, 27 Jan 2023 09:22:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6DF8341CB5
 for <bridge@lists.linux-foundation.org>; Fri, 27 Jan 2023 09:22:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DF8341CB5
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=XOWnbPeH
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JMC4t05V9-wi for <bridge@lists.linux-foundation.org>;
 Fri, 27 Jan 2023 09:22:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7707341CB3
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7707341CB3
 for <bridge@lists.linux-foundation.org>; Fri, 27 Jan 2023 09:22:47 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id gs13so1284120ejc.0
 for <bridge@lists.linux-foundation.org>; Fri, 27 Jan 2023 01:22:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=7q//eWD7kpKVjwkvP9sSwP1duHlI8w+YBBfIBpjcKsU=;
 b=XOWnbPeHK869eG5NgRyxRRIGBWXGJksAbHxR5YyTn4BIx6+j+VvSQiBjgC3IN9kLM6
 AIo37Y0Rc444kkJFPhPJ6euTVgyNThZCA2oJb2LzDS/1SVriuTTi8EvYecyC8eIdiBEA
 la8iyZFBSWntYG3t4RdeHYi2TDDpBZODccGCEEg9KztzkAhrwpRR4+oZ8vRrEH6hfG1I
 +R2LKV3N6AglJsS27FLGOe6VHMW4SFpYZRrG1BWdBlBxB0tdFUCbmlrjFalVdDQAPvUE
 UZjgytkW2zekKT3kN+TYRvzQJK4PsaCiyRzKlKREKYukuda1NuaZ59TM9s4yuM4laT8M
 VHYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7q//eWD7kpKVjwkvP9sSwP1duHlI8w+YBBfIBpjcKsU=;
 b=yIkxWXPnxosO7wa2oENXTIKADR6mlV+oCC4c8ruOB/00DlzPU6UfHlGcGJeUnxRcYu
 dz5Y5Rg6ZS5VinkTv4U06JYvCCUWdKu56ZzZeuRBh5ba71ySA84B00CGnJ754eEoOxoQ
 LewCuTrfNY1AOwHaJZuufiQFhcBCwMF62HwydFAfVEODOaw/foBMHb3r4oPFkDGj/rb9
 K8p5Ws8PsWOBwJXu0Nj/N0ZDd1xKe7e17ucRhFFUDF6llabBLRh5tIbDuGQgqhhZwe9P
 Smg4rvYYzRd2zfmSjPkgaTXzrtiyUFO66IJllUG6uRe7ttTp6HZjRCYO+cBEFHL6rKPY
 7J2Q==
X-Gm-Message-State: AFqh2kogaQSQPco0Dvt1bj1ZtxjP87+b+WorvGns8Y5duLaBn6ef6nEO
 2hBXHkVQmNNeWVw02fSP174=
X-Google-Smtp-Source: AMrXdXsI0jN67mGYaa42H82OuSgQ4JsGdf/ChsuoiIeoIX5rV8ZZhPMBjBwTpMW0C2YxZ8KtVkdWQw==
X-Received: by 2002:a17:907:8e86:b0:84d:43c3:a897 with SMTP id
 tx6-20020a1709078e8600b0084d43c3a897mr57904255ejc.2.1674811365461; 
 Fri, 27 Jan 2023 01:22:45 -0800 (PST)
Received: from skbuf ([188.27.185.85]) by smtp.gmail.com with ESMTPSA id
 x26-20020a1709060a5a00b00877f2b842fasm1898006ejf.67.2023.01.27.01.22.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Jan 2023 01:22:45 -0800 (PST)
Date: Fri, 27 Jan 2023 11:22:42 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20230127092242.ajwlo3tivxsjsul7@skbuf>
References: <2919eb55e2e9b92265a3ba600afc8137a901ae5f.1674760340.git.leon@kernel.org>
 <20230126223213.riq6i2gdztwuinwi@skbuf> <Y9NfkgRbWAbrxQ1G@unreal>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y9NfkgRbWAbrxQ1G@unreal>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] netlink: provide an ability to set
 default extack message
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

On Fri, Jan 27, 2023 at 07:22:26AM +0200, Leon Romanovsky wrote:
> It means changing ALL error unwind places where extack was forwarded
> before to subfunctions.
> 
> Places like this:
>  ret = func(..., extack)
>  if (ret) {
>    NL_SET_ERR_MSG_MOD...
>    return ret;
>  }
> 
> will need to be changed to something like this:
>  ret = func(..., extack)
>  if (ret) {
>    NL_SET_ERR_MSG_WEAK...
>    return ret;
>  }

Yeah, but my point is that you inspect the code that you plan to convert,
rather than converting it in bulk and inspecting later...

> Can we please discuss current code and not over-engineered case which
> doesn't exist in the reality?
> 
> Even for your case, I would like to see NL_SET_ERR_MSG_FORCE() to
> explicitly say that message will be overwritten.

__nla_validate_parse()

	if (unlikely(rem > 0)) {
		pr_warn_ratelimited("netlink: %d bytes leftover after parsing attributes in process `%s'.\n",
				    rem, current->comm);
		NL_SET_ERR_MSG(extack, "bytes leftover after parsing attributes");
		if (validate & NL_VALIDATE_TRAILING)
			return -EINVAL;
	}

	return 0;

called by nla_validate_deprecated() with validate == NL_VALIDATE_LIBERAL

followed by other extack setting in tunnel_key_copy_opts(), which will
not overwrite the initial warning message.
